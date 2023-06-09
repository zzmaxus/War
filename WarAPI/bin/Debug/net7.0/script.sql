USE [PROG455SP23]
GO
/****** Object:  Table [dbo].[WarPlayer]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarPlayer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](15) NOT NULL,
	[turns] [int] NOT NULL,
 CONSTRAINT [PK_WarPlayer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WinCard]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TurnNum] [int] NOT NULL,
	[CardVal] [int] NOT NULL,
	[Suit] [nchar](10) NOT NULL,
 CONSTRAINT [PK_WinCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[APIGetPlayerByID]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[APIGetPlayerByID]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.WarPlayer
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[APIGetWinCardByID]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[APIGetWinCardByID]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.WinCard
	WHERE ID = @id
END
GO
/****** Object:  StoredProcedure [dbo].[APIInsertPlayer]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[APIInsertPlayer]
@name nchar(15),
@turns int,
@ReturnValue int OUTPUT

AS
BEGIN

INSERT INTO dbo.WarPlayer(name, turns)
VALUES(@name, @turns);
SET @ReturnValue = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[APIPlayerGetById]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIPlayerGetById]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.WarPlayer
	WHERE ID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[CardGetById]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CardGetById]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.WinCard
	WHERE ID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[PlayerGetById]    Script Date: 5/11/2023 2:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PlayerGetById]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.WarPlayer
	WHERE ID = @id
END

GO

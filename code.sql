--  ██████╗ ██████╗ ██████╗ ███████╗███╗   ███╗ █████╗ ███╗   ██╗
-- ██╔════╝██╔═══██╗██╔══██╗██╔════╝████╗ ████║██╔══██╗████╗  ██║
-- ██║     ██║   ██║██║  ██║█████╗  ██╔████╔██║███████║██╔██╗ ██║
-- ██║     ██║   ██║██║  ██║██╔══╝  ██║╚██╔╝██║██╔══██║██║╚██╗██║
-- ╚██████╗╚██████╔╝██████╔╝███████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║
--  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
-- @version 1.0.0

DROP SCHEMA IF EXISTS unimex_34;

-- Crea una base de datos
CREATE SCHEMA unimex_34;

-- Selecciona la base de datos a utilizar
USE unimex_34;

CREATE TABLE alumnos(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	nombres VARCHAR( 50 ) NOT NULL,
	apellido_paterno VARCHAR( 40 ) NOT NULL,
	apellido_materno VARCHAR( 40 ) NOT NULL,
	correo_electronico VARCHAR( 60 ) NOT NULL,
	genero ENUM( "F", "M", "O" ) NOT NULL,
	comentarios TEXT NOT NULL,
	fecha_creacion DATETIME,
	fecha_modificacion DATETIME,
	fecha_eliminacion DATETIME,

	PRIMARY KEY( id )
)
ENGINE = INNODB
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2020 at 03:36 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quran_readers`
--

-- --------------------------------------------------------

--
-- Table structure for table `quran_reader`
--

DROP TABLE IF EXISTS `quran_reader`;
CREATE TABLE IF NOT EXISTS `quran_reader` (
  `reader_id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_name` varchar(100) NOT NULL,
  PRIMARY KEY (`reader_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=swe7;

--
-- Dumping data for table `quran_reader`
--

INSERT INTO `quran_reader` (`reader_id`, `reader_name`) VALUES
(1, 'mashary_rashed'),
(2, 'al_agamy'),
(3, 'ben_baz');

-- --------------------------------------------------------

--
-- Table structure for table `quran_reader_quran_surah`
--

DROP TABLE IF EXISTS `quran_reader_quran_surah`;
CREATE TABLE IF NOT EXISTS `quran_reader_quran_surah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) DEFAULT NULL,
  `surah_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reader_id` (`reader_id`),
  KEY `surah_id` (`surah_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=swe7;

--
-- Dumping data for table `quran_reader_quran_surah`
--

INSERT INTO `quran_reader_quran_surah` (`id`, `reader_id`, `surah_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quran_surah`
--

DROP TABLE IF EXISTS `quran_surah`;
CREATE TABLE IF NOT EXISTS `quran_surah` (
  `surah_id` int(11) NOT NULL AUTO_INCREMENT,
  `surah_name` varchar(100) NOT NULL,
  PRIMARY KEY (`surah_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=swe7;

--
-- Dumping data for table `quran_surah`
--

INSERT INTO `quran_surah` (`surah_id`, `surah_name`) VALUES
(1, 'alfateha');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

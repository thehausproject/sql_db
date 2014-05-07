/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OWNER` int(10) unsigned DEFAULT NULL,
  `PASSCODE` char(16) DEFAULT NULL,
  `TYPE` char(1) NOT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'U',
  `NICKNAME` varchar(64) DEFAULT NULL,
  `STATE` varchar(16) DEFAULT NULL,
  `LAST_CHECKIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PASSCODE` (`PASSCODE`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE_ACCESS` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_PERMISSION_ID` int(10) unsigned NOT NULL,
  `ALL_ACCESS` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE_ACCESS_DAY` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_ACCESS_ID` int(10) unsigned NOT NULL,
  `DAY` varchar(7) NOT NULL,
  `ALL_ACCESS` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE_ACCESS_HISTORY` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` int(10) unsigned NOT NULL,
  `USER_ID` int(10) unsigned NOT NULL,
  `ACCESSED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE_ACCESS_TIME` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACCESS_DAY_ID` int(10) unsigned NOT NULL,
  `START_TIME` mediumint(5) unsigned NOT NULL,
  `END_TIME` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEVICE_PERMISSION` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) unsigned NOT NULL,
  `DEVICE_ID` int(10) unsigned NOT NULL,
  `PERMISSION` char(1) NOT NULL,
  `DATE_AUTHORIZED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ACCESS_EXPIRATION_DATE` date DEFAULT NULL,
  `ACCESS_GRANTED_BY` int(10) unsigned NOT NULL,
  `ACCESS_CODE` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(64) NOT NULL,
  `PASSWORD` char(64) NOT NULL,
  `EMAIL` varchar(256) NOT NULL,
  `AUTH_TOKEN` char(64) NOT NULL,
  `FACIAL_RECOGNITION_DATA` blob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`,`EMAIL`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VIDEO_DEVICE` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` int(10) unsigned NOT NULL,
  `IP_ADDRESS` varchar(15) NOT NULL,
  `PORT` int(10) unsigned NOT NULL,
  `USERNAME` varchar(64) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

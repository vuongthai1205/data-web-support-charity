-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: webhotrotuthien
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bai_viet`
--

DROP TABLE IF EXISTS `bai_viet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_viet` (
  `MaBaiViet` int NOT NULL AUTO_INCREMENT,
  `MaThanhVien` int NOT NULL,
  `TieuDe` varchar(105) NOT NULL,
  `NoiDung` text NOT NULL,
  `GiaKhoiDiem` double DEFAULT NULL,
  `TrangThaiDauGia` int DEFAULT NULL,
  `ThoiGianBatDau` datetime DEFAULT NULL,
  `ThoiGianKetThuc` datetime DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaBaiViet`),
  KEY `MaThanhVien_idx` (`MaThanhVien`),
  KEY `TrangThaiDauGia_idx` (`TrangThaiDauGia`),
  KEY `TrangThaiDauGia_idx_baiviet` (`TrangThaiDauGia`),
  CONSTRAINT `MaThanhVien` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`),
  CONSTRAINT `MaTrangThaiDauGiaBaiViet` FOREIGN KEY (`TrangThaiDauGia`) REFERENCES `trang_thai_dau_gia` (`MaTrangThaiDauGia`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_viet`
--

LOCK TABLES `bai_viet` WRITE;
/*!40000 ALTER TABLE `bai_viet` DISABLE KEYS */;
INSERT INTO `bai_viet` VALUES (35,16,'Chương trình từ thiện ngày 6/6','<p><span style=\"color: rgb(33,37,41);background-color: rgb(255,255,255);font-size: 16px;font-family: Montserrat, sans-serif;\">Ngày 1/8, hình ảnh Top 3 Miss World Vietnam 2023 trao quà, thăm hỏi bệnh nhân ở một bệnh viện tư tại TP.HCM được chia sẻ, lan truyền trên mạng xã hội gây xôn xao.</span>&nbsp;</p>\n',60000,3,'2024-06-06 07:00:00','2024-06-13 07:00:00','2024-06-06 15:01:29','2024-06-22 22:10:56'),(40,2,'Chương trình từ thiện ngày 27/06','<p>Đây là chương trình từ thiện đặc biệt của chúng tôi:</p>\n<p>Hãy chuyển khoản vào số tài khoản: 0123455789 để bắt đầu đấu giá sản phẩm</p>\n',90000,3,'2024-06-27 07:00:00','2024-06-29 07:00:00','2024-06-27 10:02:14','2024-07-05 14:23:41'),(41,1,'Dự án từ thiện ngày 04/07','<p>Nội dung từ thiện ngày hôm nay: <br>Chuyển khoản để được đấu giá sản phẩm từ thiện</p>\n',80000,3,'2024-07-04 07:00:00','2024-07-05 07:00:00','2024-07-04 21:45:27','2024-07-04 21:47:11');
/*!40000 ALTER TABLE `bai_viet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bao_cao_thanh_vien`
--

DROP TABLE IF EXISTS `bao_cao_thanh_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bao_cao_thanh_vien` (
  `MaThanhVienBC` int NOT NULL,
  `MaThanhVienBiBaoCao` int NOT NULL,
  `LyDoBaoCao` varchar(45) NOT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `NgayTao1` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`MaThanhVienBC`,`MaThanhVienBiBaoCao`,`LyDoBaoCao`),
  KEY `MaThanhVien_BaoCao_idx` (`MaThanhVienBC`),
  KEY `MaThanhVien_BiBaoCao_idx` (`MaThanhVienBiBaoCao`),
  CONSTRAINT `MaThanhVien_BaoCao` FOREIGN KEY (`MaThanhVienBC`) REFERENCES `thanh_vien` (`MaThanhVien`),
  CONSTRAINT `MaThanhVien_BiBaoCao` FOREIGN KEY (`MaThanhVienBiBaoCao`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bao_cao_thanh_vien`
--

LOCK TABLES `bao_cao_thanh_vien` WRITE;
/*!40000 ALTER TABLE `bao_cao_thanh_vien` DISABLE KEYS */;
INSERT INTO `bao_cao_thanh_vien` VALUES (1,2,'Bài viết lừa đảo','2024-05-10 23:18:59',NULL,NULL),(1,2,'Dự án lừa đảo','2024-05-10 22:26:57',NULL,NULL),(1,2,'Ngu','2023-10-12 23:05:03',NULL,NULL),(1,2,'Oke','2023-10-14 09:07:35',NULL,NULL),(1,2,'Quấy rối','2024-05-10 22:26:39',NULL,NULL),(2,1,'Dự án lừa đảo','2024-04-17 23:04:26',NULL,NULL);
/*!40000 ALTER TABLE `bao_cao_thanh_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dau_gia`
--

DROP TABLE IF EXISTS `dau_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dau_gia` (
  `MaThanhVien` int NOT NULL,
  `MaBaiViet` int NOT NULL,
  `GiaTien` double DEFAULT NULL,
  `DaThangDauGia` tinyint DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThanhVien`,`MaBaiViet`),
  KEY `MaThanhVien_KetQua_idx` (`MaThanhVien`),
  KEY `MaBaiViet_KetQua_idx` (`MaBaiViet`),
  CONSTRAINT `MaBaiViet_KetQua` FOREIGN KEY (`MaBaiViet`) REFERENCES `bai_viet` (`MaBaiViet`),
  CONSTRAINT `MaThanhVien_KetQua` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dau_gia`
--

LOCK TABLES `dau_gia` WRITE;
/*!40000 ALTER TABLE `dau_gia` DISABLE KEYS */;
INSERT INTO `dau_gia` VALUES (1,35,70000,0,'2024-06-14 17:12:31','2024-06-22 22:10:56'),(1,40,100000,0,'2024-07-05 14:21:36','2024-07-05 14:23:41'),(2,35,500000,0,'2024-06-22 22:04:58','2024-06-22 22:10:56'),(6,35,240000,1,'2024-06-07 13:09:46','2024-06-22 22:10:56'),(16,35,100000,0,'2024-06-22 22:17:26',NULL),(16,41,700000,0,'2024-07-04 21:45:51','2024-07-04 21:47:11'),(17,40,300000,1,'2024-07-05 14:22:33','2024-07-05 14:23:41'),(17,41,800000,1,'2024-07-04 21:46:28','2024-07-04 21:47:11');
/*!40000 ALTER TABLE `dau_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `du_an_tu_thien`
--

DROP TABLE IF EXISTS `du_an_tu_thien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `du_an_tu_thien` (
  `MaDuAn` int NOT NULL AUTO_INCREMENT,
  `MaThanhVienTaoDA` int NOT NULL,
  `TenDuAn` varchar(45) NOT NULL,
  `MucDich` varchar(45) DEFAULT NULL,
  `ThoiGianBatDau` datetime DEFAULT NULL,
  `ThoiGianKetThuc` datetime DEFAULT NULL,
  `DiaDiem` varchar(45) DEFAULT NULL,
  `SoTienHuyDong` double DEFAULT NULL,
  `DaDuyet` tinyint DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaDuAn`),
  KEY `MaThanhVienTaoDA_idx` (`MaThanhVienTaoDA`),
  CONSTRAINT `MaThanhVienTaoDA` FOREIGN KEY (`MaThanhVienTaoDA`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du_an_tu_thien`
--

LOCK TABLES `du_an_tu_thien` WRITE;
/*!40000 ALTER TABLE `du_an_tu_thien` DISABLE KEYS */;
INSERT INTO `du_an_tu_thien` VALUES (1,1,'Dự Án Từ thiện ngày hôm nay','Đi xây cầu tại bình định',NULL,NULL,'Bình Định',190000,1,NULL,'2023-10-21 14:53:27'),(5,1,'Dự án từ thiện đặc biệt tại Gia Lai','Hỗ trợ các em nhỏ miền núi',NULL,NULL,'Gia Lai',100000,1,NULL,'2023-10-21 14:40:28'),(6,1,'Dự án từ thiện đặc biệt tại Mỹ','Hỗ trợ các em nhỏ miền núi',NULL,NULL,'Gia Lai',8000000,0,'2023-10-05 00:00:00','2023-10-22 17:14:07'),(9,1,'Dự án đặc biệt từ thiện','Đi xây dựng hồ bơi','2023-10-08 00:00:00','2023-10-26 00:00:00','Bình Định',1000000,1,'2023-10-06 00:00:00','2023-10-22 17:14:27'),(12,1,'Dự án từ thiện gây quỹ trẻ em','Mục Đích hoàn hảo','2023-10-09 07:00:00','2023-10-18 07:00:00','địa chỉ tuyệt vời',1460000,1,'2023-10-08 00:00:00','2023-10-22 17:31:47'),(16,2,'Dự án ','Mục đích dự án','2024-06-20 00:00:00','2024-06-21 00:00:00','địa chỉ',90000,1,'2024-06-20 00:00:00','2024-06-20 20:00:27'),(17,1,'Dự án từ thiện tại đồng tháp','Xây đường cho người dân ở đồng tháp','2024-07-04 00:00:00','2024-07-10 00:00:00','Đồng tháp',800000,1,'2024-07-04 00:00:00','2024-07-04 23:28:51');
/*!40000 ALTER TABLE `du_an_tu_thien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_anh_bai_viet`
--

DROP TABLE IF EXISTS `hinh_anh_bai_viet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_anh_bai_viet` (
  `MaHinhBaiViet` int NOT NULL AUTO_INCREMENT,
  `MaBaiViet` int DEFAULT NULL,
  `DuongDanHinh` varchar(200) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHinhBaiViet`),
  KEY `MaBaiViet_HinhAnh_idx` (`MaBaiViet`),
  CONSTRAINT `MaHinh_baiViet` FOREIGN KEY (`MaBaiViet`) REFERENCES `bai_viet` (`MaBaiViet`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_anh_bai_viet`
--

LOCK TABLES `hinh_anh_bai_viet` WRITE;
/*!40000 ALTER TABLE `hinh_anh_bai_viet` DISABLE KEYS */;
INSERT INTO `hinh_anh_bai_viet` VALUES (106,35,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1.jpeg?alt=media&token=fd20bfda-1e2c-4dbf-a23e-c1ee73f8d926','2024-06-06 15:01:29','2024-06-22 22:10:56'),(107,35,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F93e890d4-ae83-4f6a-bf97-5c4637ee8634.jpg?alt=media&token=db8ccfaf-f9f8-4714-bfac-22e6092e54e1','2024-06-06 15:01:29','2024-06-22 22:10:56'),(115,40,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1476965171-147694315781874-ng---c-h--n.jpg?alt=media&token=09a70289-96cb-4ced-b995-e4512e11ee30','2024-06-27 10:02:14','2024-07-05 14:23:41'),(116,40,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F93e890d4-ae83-4f6a-bf97-5c4637ee8634.jpg?alt=media&token=16767493-0830-4464-9481-b68a363b984e','2024-06-27 10:02:14','2024-07-05 14:23:41'),(117,40,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1.jpeg?alt=media&token=de9a0b07-187d-4849-9557-ee9243826b70','2024-06-27 10:02:14','2024-07-05 14:23:41'),(118,41,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1674032207_anh-tu-thien(1).jpeg?alt=media&token=79c166b0-b9a4-4df1-a0fa-4604e93e1057','2024-07-04 21:45:27','2024-07-04 21:47:11'),(119,41,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1476965171-147694315781874-ng---c-h--n.jpg?alt=media&token=0403aeaf-7b3f-47fe-93b3-9c0cc90a1ebd','2024-07-04 21:45:27','2024-07-04 21:47:11');
/*!40000 ALTER TABLE `hinh_anh_bai_viet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_anh_binh_luan_da`
--

DROP TABLE IF EXISTS `hinh_anh_binh_luan_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_anh_binh_luan_da` (
  `MaHinhAnhBinhLuan` int NOT NULL AUTO_INCREMENT,
  `MaBinhLuan` int DEFAULT NULL,
  `DuongDanHinh` varchar(200) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHinhAnhBinhLuan`),
  KEY `mabinhluan-hinhanhbinhluan_idx` (`MaBinhLuan`),
  CONSTRAINT `mabinhluan-hinhanhbinhluan` FOREIGN KEY (`MaBinhLuan`) REFERENCES `tv_binh_luan_da` (`MaBinhLuan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_anh_binh_luan_da`
--

LOCK TABLES `hinh_anh_binh_luan_da` WRITE;
/*!40000 ALTER TABLE `hinh_anh_binh_luan_da` DISABLE KEYS */;
INSERT INTO `hinh_anh_binh_luan_da` VALUES (6,13,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2FAsset%201%402x.png?alt=media&token=0da06727-094a-45cc-8c89-eeb5cac4461d','2024-04-22 22:58:08',NULL),(7,15,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2FAsset%202%402x.png?alt=media&token=9da6ddf0-5c3b-42d6-a1e8-be324d6805e6','2024-04-22 23:10:15',NULL),(13,38,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2Fimages%20(1).jpg?alt=media&token=b773e2ee-d153-4346-b6a0-cbfa6209d675','2024-07-04 23:29:28',NULL);
/*!40000 ALTER TABLE `hinh_anh_binh_luan_da` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_anh_du_an`
--

DROP TABLE IF EXISTS `hinh_anh_du_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_anh_du_an` (
  `MaHinhDuAn` int NOT NULL AUTO_INCREMENT,
  `MaDuAn` int DEFAULT NULL,
  `DuongDanHinh` varchar(200) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHinhDuAn`),
  KEY `MaHinhDuAn_idx` (`MaDuAn`),
  CONSTRAINT `MaHinhDuAn` FOREIGN KEY (`MaDuAn`) REFERENCES `du_an_tu_thien` (`MaDuAn`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_anh_du_an`
--

LOCK TABLES `hinh_anh_du_an` WRITE;
/*!40000 ALTER TABLE `hinh_anh_du_an` DISABLE KEYS */;
INSERT INTO `hinh_anh_du_an` VALUES (89,1,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874002/c1e1bc5539c6ce6dc248499d86982f29.jpg','2023-10-21 14:40:01',NULL),(90,1,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874004/3403f8ea547fc675c554da6dc0a4b09b.jpg','2023-10-21 14:40:04',NULL),(91,1,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874006/805b6dea5b851881dbd5b5817273b1ac.jpg','2023-10-21 14:40:06',NULL),(92,5,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874002/c1e1bc5539c6ce6dc248499d86982f29.jpg','2023-10-21 14:40:26',NULL),(93,5,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874006/805b6dea5b851881dbd5b5817273b1ac.jpg','2023-10-21 14:40:28',NULL),(94,6,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969643/f4baba75c1bebf7f5a0a089702cc18da.jpg','2023-10-22 17:14:04',NULL),(95,6,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969645/7b5d888e7cbe2235bf1f71295b116c1e.jpg','2023-10-22 17:14:06',NULL),(96,6,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969646/761146c479f47aa7c199770a10f4c60c.jpg','2023-10-22 17:14:07',NULL),(97,9,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969643/f4baba75c1bebf7f5a0a089702cc18da.jpg','2023-10-22 17:14:24',NULL),(98,9,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969645/7b5d888e7cbe2235bf1f71295b116c1e.jpg','2023-10-22 17:14:26',NULL),(99,9,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969646/761146c479f47aa7c199770a10f4c60c.jpg','2023-10-22 17:14:27',NULL),(106,12,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969682/39ad992c064eac9ef81fe24e269ac5fc.jpg','2023-10-22 17:31:47',NULL),(107,12,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697969684/eb9bc0551623be2fbe3b4869b2839a32.jpg','2023-10-22 17:31:47',NULL),(108,12,'https://res.cloudinary.com/dibzyjddx/image/upload/v1697874006/805b6dea5b851881dbd5b5817273b1ac.jpg','2023-10-22 17:31:47',NULL),(117,16,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1674032207_anh-tu-thien(1).jpeg?alt=media&token=327798c6-565d-4309-8a62-46afac941fd2','2024-06-20 20:00:12',NULL),(118,16,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1476965171-147694315781874-ng---c-h--n.jpg?alt=media&token=d485624a-efc1-490b-9ec8-23eb519b4bec','2024-06-20 20:00:12',NULL),(119,16,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F93e890d4-ae83-4f6a-bf97-5c4637ee8634.jpg?alt=media&token=dfe2ce37-f43a-4ef1-87fc-e993e89fd560','2024-06-20 20:00:12',NULL),(120,17,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1674032207_anh-tu-thien(1).jpeg?alt=media&token=38eabc5b-bc75-49e2-9d85-8dee30d6e32c','2024-07-04 23:28:37',NULL),(121,17,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/images%2F1476965171-147694315781874-ng---c-h--n.jpg?alt=media&token=8600f8b5-4963-4fe6-8f8b-9df15c79c062','2024-07-04 23:28:37',NULL);
/*!40000 ALTER TABLE `hinh_anh_du_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quyen` (
  `MaQuyen` int NOT NULL AUTO_INCREMENT,
  `TenQuyen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaQuyen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MEMBER'),(3,'ROLE_CUSTOMER');
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quyen_cua_thanh_vien`
--

DROP TABLE IF EXISTS `quyen_cua_thanh_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quyen_cua_thanh_vien` (
  `MaQuyen` int NOT NULL,
  `MaThanhVien` int NOT NULL,
  PRIMARY KEY (`MaQuyen`,`MaThanhVien`),
  KEY `MaThanhVien_Quyen_idx` (`MaThanhVien`),
  KEY `MaQuyen_idx` (`MaQuyen`),
  CONSTRAINT `MaQuyen` FOREIGN KEY (`MaQuyen`) REFERENCES `quyen` (`MaQuyen`),
  CONSTRAINT `MaThanhVien_Quyen` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen_cua_thanh_vien`
--

LOCK TABLES `quyen_cua_thanh_vien` WRITE;
/*!40000 ALTER TABLE `quyen_cua_thanh_vien` DISABLE KEYS */;
INSERT INTO `quyen_cua_thanh_vien` VALUES (1,1),(2,2),(2,6),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(3,45),(3,46),(3,47),(3,48),(3,49),(3,50),(3,51),(3,52),(3,53),(3,54);
/*!40000 ALTER TABLE `quyen_cua_thanh_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tham_gia_du_an`
--

DROP TABLE IF EXISTS `tham_gia_du_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tham_gia_du_an` (
  `MaThanhVien` int NOT NULL,
  `MaDuAn` int NOT NULL,
  `MaVaiTroThamGiaDA` int DEFAULT NULL,
  `NgayThamGia` datetime DEFAULT NULL,
  `CacDongGopKhac` varchar(200) DEFAULT NULL,
  `SoTienDongGop` double DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThanhVien`,`MaDuAn`),
  KEY `MaThanhVien_ThamGia_idx` (`MaThanhVien`),
  KEY `MaDuAn_ThamGia_idx` (`MaDuAn`),
  KEY `MaVaitroThamGiaDuAn_idx` (`MaVaiTroThamGiaDA`),
  CONSTRAINT `MaDuAn_ThamGia` FOREIGN KEY (`MaDuAn`) REFERENCES `du_an_tu_thien` (`MaDuAn`),
  CONSTRAINT `MaThanhVien_ThamGia` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`),
  CONSTRAINT `MaVaitroThamGiaDuAn` FOREIGN KEY (`MaVaiTroThamGiaDA`) REFERENCES `vai_tro_tham_gia_da` (`MaVaiTroThamGiaDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tham_gia_du_an`
--

LOCK TABLES `tham_gia_du_an` WRITE;
/*!40000 ALTER TABLE `tham_gia_du_an` DISABLE KEYS */;
INSERT INTO `tham_gia_du_an` VALUES (1,16,1,NULL,'Lúa',90000,'2024-06-26 15:55:28','2024-06-27 09:59:43'),(2,5,3,NULL,'Cufd',88000,'2024-04-27 20:50:03','2024-05-17 23:44:15'),(2,9,3,NULL,'Lúa mì',70000,'2023-10-12 15:19:38',NULL),(2,12,3,NULL,'fsda',0,'2024-05-18 00:13:41',NULL),(2,17,1,NULL,'Mì',1900000,'2024-07-04 23:29:50','2024-07-04 23:30:48'),(6,9,3,NULL,'Hạt gạo làng ta',123213,'2023-10-10 21:37:10',NULL),(6,12,1,NULL,'Bia lon',500000,'2023-10-11 22:30:40','2024-06-20 16:19:34'),(16,1,3,NULL,'Lúa',80000,'2024-06-27 09:39:29',NULL),(16,12,3,NULL,'Mì',70000,'2024-06-27 09:39:18',NULL),(16,16,3,NULL,'Mì',30000,'2024-06-27 09:38:46',NULL),(17,9,3,NULL,'Mì',80000,'2024-06-27 09:40:15',NULL),(17,16,3,NULL,'ly',90000,'2024-06-27 09:40:02',NULL),(18,1,3,NULL,'mị',70000,'2024-06-27 09:41:00',NULL),(18,12,3,NULL,'mì',60000,'2024-06-27 09:40:47',NULL),(19,9,3,NULL,'Mì',80000,'2024-06-27 09:41:38',NULL),(19,16,3,NULL,'mì',90000,'2024-06-27 09:41:26',NULL),(20,12,3,NULL,'Lúa',90300,'2024-06-27 09:42:22',NULL),(20,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(21,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(21,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(22,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(22,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(23,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(23,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(24,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(24,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(25,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(25,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(26,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(26,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(27,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(27,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(28,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(28,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(29,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(29,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(30,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(30,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(31,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(31,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(32,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(32,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(33,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(33,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(34,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(34,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(35,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(35,16,3,NULL,'Mì',90000,'2024-06-26 15:52:14',NULL),(35,17,3,NULL,'Lúa',30000,'2024-07-05 11:32:00','2024-07-05 11:32:16'),(36,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(36,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(37,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(37,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(38,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(38,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(39,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(39,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(40,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(40,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(41,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(41,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(42,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(42,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(43,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(43,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(44,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(44,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(45,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(45,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(46,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(46,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(47,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(47,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(48,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(48,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(49,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(49,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(50,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(50,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(51,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(51,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(52,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(52,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(53,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(53,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(54,12,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL),(54,16,3,NULL,'Mì',100000,'2024-06-27 09:42:08',NULL);
/*!40000 ALTER TABLE `tham_gia_du_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanh_vien`
--

DROP TABLE IF EXISTS `thanh_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanh_vien` (
  `MaThanhVien` int NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(45) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `SoDienThoai` varchar(12) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Ho` varchar(45) DEFAULT NULL,
  `Ten` varchar(45) DEFAULT NULL,
  `Tuoi` int DEFAULT NULL,
  `GioiTinh` tinyint DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `AnhDaiDien` varchar(200) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThanhVien`),
  UNIQUE KEY `TenDangNhap_UNIQUE` (`TenDangNhap`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanh_vien`
--

LOCK TABLES `thanh_vien` WRITE;
/*!40000 ALTER TABLE `thanh_vien` DISABLE KEYS */;
INSERT INTO `thanh_vien` VALUES (1,'vuongthai','$2a$10$OtOn4kgNWLYpM86PfKSOSu9oMUgBqFjEjRarHggpmgU9FZqk5f83O','09102939','vuong.codeweb@gmail.com','Thái','Vương Đẹp',NULL,NULL,NULL,'','https://res.cloudinary.com/dibzyjddx/image/upload/v1694095329/578dfc9754d5dcca9fb11f74c940eb29.png',NULL,'2024-06-07 15:10:25'),(2,'thaigiavuong','$2a$10$OtOn4kgNWLYpM86PfKSOSu9oMUgBqFjEjRarHggpmgU9FZqk5f83O','098989899','vuongpro1205@gmail.com','Thái','Vương',NULL,1,'2000-02-27 00:00:00','Bình Định','https://res.cloudinary.com/dibzyjddx/image/upload/v1694095650/d42772e9f8c2f4277cf8a89585ef0725.png','2023-09-16 00:00:00','2024-07-04 23:18:14'),(6,'giavuong','$2a$10$634RkqDZ8iPSK9yuh3nOHugUySjNPrjY1ZcRL1h0Ad1tfjalkGREe','0989898998','giavuong.1205@gmail.com','Thái','Vương Đẹp',NULL,1,NULL,',','https://res.cloudinary.com/dibzyjddx/image/upload/v1694961090/7bcd43976976b75f2de0e060caa0531d.jpg','2023-09-17 00:00:00','2024-06-22 22:11:13'),(15,'nguyenvuong','$2a$10$2vvk19274moMz6HLBeWefe.bOKtgnVnLoefvtZKR0RQzKUQAii1G2','0920902901','giavuongthai@gmail.com','Nguyen','Vuong',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2Fthuytien-1.jpg?alt=media&token=001f68ee-939e-4eb7-83bc-7b9c03851212','2023-10-21 18:57:43',NULL),(16,'vuongthai1','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','vuong@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(17,'vuongthai2','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(18,'vuongthai3','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(19,'vuongthai4','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(20,'vuongthai5','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(21,'vuongthai6','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(22,'vuongthai7','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(23,'vuongthai8','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(24,'vuongthai9','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(25,'vuongthai10','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(26,'vuongthai11','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(27,'vuongthai12','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(28,'vuongthai13','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(29,'vuongthai14','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(30,'vuongthai15','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(31,'vuongthai16','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(32,'vuongthai17','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(33,'vuongthai18','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(34,'vuongthai19','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(35,'vuongthai20','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(36,'vuongthai21','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(37,'vuongthai22','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(38,'vuongthai23','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(39,'vuongthai24','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(40,'vuongthai25','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(41,'vuongthai26','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(42,'vuongthai27','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(43,'vuongthai28','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(44,'vuongthai29','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(45,'vuongthai30','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(46,'vuongthai31','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(47,'vuongthai32','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(48,'vuongthai33','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(49,'vuongthai34','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(50,'vuongthai35','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(51,'vuongthai36','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(52,'vuongthai37','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(53,'vuongthai38','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL),(54,'vuongthai39','$2a$10$/wtGIp/oU4QZ21iy0FJc9OzAWploaIXoqWxo0uiqLR5541mTfY3ua','09372927','giavuong.1205@gmail.com','Thái Gia','Vương',NULL,NULL,NULL,NULL,'https://firebasestorage.googleapis.com/v0/b/mangxahoituthien.appspot.com/o/avatars%2F81p0r3-7tNL._SR476%2C476_.jpg?alt=media&token=782fc635-8b0f-42f6-abc4-7e11cd7e141f','2024-06-06 14:15:19',NULL);
/*!40000 ALTER TABLE `thanh_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_bao`
--

DROP TABLE IF EXISTS `thong_bao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thong_bao` (
  `MaThongBao` int NOT NULL AUTO_INCREMENT,
  `MaThanhVien` int DEFAULT NULL,
  `NoiDung` text,
  `LoaiThongBao` varchar(45) DEFAULT NULL,
  `DaDoc` tinyint DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThongBao`),
  KEY `MaThanhVienThongBao_idx` (`MaThanhVien`),
  CONSTRAINT `MaThanhVienThongBao` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_bao`
--

LOCK TABLES `thong_bao` WRITE;
/*!40000 ALTER TABLE `thong_bao` DISABLE KEYS */;
INSERT INTO `thong_bao` VALUES (1,2,'thaigiavuong vừa thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-06-30 17:44:17',NULL),(2,2,'thaigiavuong vừa bỏ thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-06-30 17:44:41',NULL),(3,2,'thaigiavuong vừa bỏ thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:42:14',NULL),(4,2,'thaigiavuong vừa thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:42:15',NULL),(5,16,'thaigiavuong vừa bình luận bài viết Chương trình từ thiện ngày 6/6 của bạn',NULL,0,'2024-07-03 22:55:10',NULL),(6,2,'thaigiavuong vừa bình luận bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:55:20',NULL),(7,2,'vuongthai1 vừa bỏ thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:56:29',NULL),(8,2,'vuongthai1 vừa thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:56:30',NULL),(9,2,'vuongthai1 vừa bỏ thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:56:30',NULL),(10,2,'vuongthai1 vừa thích bài viết Chương trình từ thiện ngày 27/06 của bạn',NULL,0,'2024-07-03 22:56:30',NULL),(11,1,'vuongthai1 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 700000',NULL,0,'2024-07-04 21:45:51',NULL),(12,1,'vuongthai1 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 700000',NULL,0,'2024-07-04 21:45:51',NULL),(13,1,'vuongthai1 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 700000',NULL,0,'2024-07-04 21:45:51',NULL),(14,1,'vuongthai1 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:45:54',NULL),(15,1,'vuongthai1 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:45:54',NULL),(16,1,'vuongthai1 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:45:54',NULL),(17,1,'vuongthai2 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 800000',NULL,0,'2024-07-04 21:46:28',NULL),(18,1,'vuongthai2 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 800000',NULL,0,'2024-07-04 21:46:28',NULL),(19,1,'vuongthai2 vừa đấu giá bài viết Dự án từ thiện ngày 04/07 của bạn với số tiền là 800000',NULL,0,'2024-07-04 21:46:28',NULL),(20,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:29',NULL),(21,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:30',NULL),(22,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:30',NULL),(23,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:36',NULL),(24,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:36',NULL),(25,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:46:36',NULL),(26,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:14',NULL),(27,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:14',NULL),(28,1,'vuongthai2 vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:14',NULL),(29,1,'vuongthai vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:44',NULL),(30,1,'vuongthai vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:44',NULL),(31,1,'vuongthai vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:48:44',NULL),(32,1,'vuongthai2 vừa bỏ thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:50:30',NULL),(33,1,'vuongthai2 vừa bỏ thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:50:31',NULL),(34,1,'vuongthai2 vừa bỏ thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:50:31',NULL),(35,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:52:03',NULL),(36,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 21:52:03',NULL),(37,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 22:00:09',NULL),(38,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 22:00:11',NULL),(39,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 22:00:13',NULL),(45,1,'vuongthai vừa bình luận bài viết Dự án từ thiện ngày 04/07 của bạn',NULL,0,'2024-07-04 22:38:15',NULL),(57,1,'vuongthai1 vừa bỏ thích bài viết Dự án từ thiện ngày 04/07 của bạn','thong_bao',0,'2024-07-04 23:55:37',NULL),(58,1,'vuongthai1 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn','thong_bao',0,'2024-07-04 23:56:27',NULL),(59,1,'thaigiavuong vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn','thong_bao',0,'2024-07-04 23:56:54',NULL),(60,1,'vuongthai2 vừa thích bài viết Dự án từ thiện ngày 04/07 của bạn','thong_bao',0,'2024-07-04 23:57:16',NULL),(61,2,'vuongthai vừa đấu giá bài viết Chương trình từ thiện ngày 27/06 của bạn với số tiền là 100000','thong_bao',0,'2024-07-05 14:21:36',NULL);
/*!40000 ALTER TABLE `thong_bao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trang_thai_dau_gia`
--

DROP TABLE IF EXISTS `trang_thai_dau_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trang_thai_dau_gia` (
  `MaTrangThaiDauGia` int NOT NULL AUTO_INCREMENT,
  `TenTrangThai` varchar(45) NOT NULL,
  PRIMARY KEY (`MaTrangThaiDauGia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trang_thai_dau_gia`
--

LOCK TABLES `trang_thai_dau_gia` WRITE;
/*!40000 ALTER TABLE `trang_thai_dau_gia` DISABLE KEYS */;
INSERT INTO `trang_thai_dau_gia` VALUES (1,'Không đấu giá'),(2,'Đang đấu giá'),(3,'Kết thúc đấu giá');
/*!40000 ALTER TABLE `trang_thai_dau_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_binh_luan_bv`
--

DROP TABLE IF EXISTS `tv_binh_luan_bv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_binh_luan_bv` (
  `MaBinhLuan` int NOT NULL AUTO_INCREMENT,
  `MaThanhVien` int NOT NULL,
  `MaBaiViet` int NOT NULL,
  `NoiDung` text,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaBinhLuan`),
  KEY `MaThanhVien_BinhLuan_idx` (`MaThanhVien`),
  KEY `MaBaiViet_BinhLuan_idx` (`MaBaiViet`),
  CONSTRAINT `MaBaiViet_BinhLuan` FOREIGN KEY (`MaBaiViet`) REFERENCES `bai_viet` (`MaBaiViet`),
  CONSTRAINT `MaThanhVien_BinhLuan` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_binh_luan_bv`
--

LOCK TABLES `tv_binh_luan_bv` WRITE;
/*!40000 ALTER TABLE `tv_binh_luan_bv` DISABLE KEYS */;
INSERT INTO `tv_binh_luan_bv` VALUES (21,16,40,'tuyệt vời quá','2024-06-27 13:41:01',NULL),(22,2,35,'hihi','2024-07-03 22:54:52',NULL),(23,2,35,'hay','2024-07-03 22:55:09',NULL),(24,2,40,'Hay quá','2024-07-03 22:55:20',NULL),(25,17,41,'quá ý nghĩa','2024-07-04 21:46:36',NULL),(26,17,41,'huy','2024-07-04 21:48:14',NULL),(27,1,41,'hay','2024-07-04 22:38:14',NULL),(28,16,41,'đỉnh cao','2024-07-04 23:36:53',NULL);
/*!40000 ALTER TABLE `tv_binh_luan_bv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_binh_luan_da`
--

DROP TABLE IF EXISTS `tv_binh_luan_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_binh_luan_da` (
  `MaBinhLuan` int NOT NULL AUTO_INCREMENT,
  `MaThanhVien` int NOT NULL,
  `MaDuAn` int NOT NULL,
  `NoiDung` text,
  `TrangThai` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaBinhLuan`),
  KEY `MaThanhVienBinhLuanDuAn_idx` (`MaThanhVien`),
  KEY `MaDuAnBinhLuanDuAn_idx` (`MaDuAn`),
  CONSTRAINT `MaDuAnBinhLuanDuAn` FOREIGN KEY (`MaDuAn`) REFERENCES `du_an_tu_thien` (`MaDuAn`),
  CONSTRAINT `MaThanhVienBinhLuanDuAn` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_binh_luan_da`
--

LOCK TABLES `tv_binh_luan_da` WRITE;
/*!40000 ALTER TABLE `tv_binh_luan_da` DISABLE KEYS */;
INSERT INTO `tv_binh_luan_da` VALUES (2,1,1,'mong là được',0,'2023-10-15 22:34:49',NULL),(7,1,1,'Rất ý nghĩa ạ 1',0,'2024-04-15 23:32:03',NULL),(8,1,1,'Rất ý nghĩa ạ 1',0,'2024-04-15 23:32:48',NULL),(9,1,1,'Rất ý nghĩa ạ hihi1',0,'2024-04-15 23:34:44',NULL),(13,1,5,'huhu',0,'2024-04-22 22:58:08',NULL),(14,1,12,'mong laf dduocjw',0,'2024-04-22 23:00:05',NULL),(15,1,12,'tuyet',1,'2024-04-22 23:10:15',NULL),(17,1,5,'truyể',0,'2024-04-23 21:46:10',NULL),(21,1,5,'fdsa',1,'2024-04-27 20:49:10',NULL),(32,1,12,'<p></p>\n<iframe width=\"auto\" height=\"auto\" src=\"https://www.youtube.com/embed/I8YtuQrBgZU?si=mFRTgHd_v5zADKGl\" frameBorder=\"0\"></iframe>\n<p>ngày mới</p>\n',0,'2024-06-20 19:49:54',NULL),(33,1,12,'<p></p>\n<iframe width=\"auto\" height=\"auto\" src=\"https://www.youtube.com/embed/I8YtuQrBgZU?si=mFRTgHd_v5zADKGl\" frameBorder=\"0\"></iframe>\n<p>ngày mới</p>\n',1,'2024-06-20 19:50:12',NULL),(34,2,12,'<p></p>\n<iframe width=\"auto\" height=\"auto\" src=\"https://www.youtube.com/embed/I8YtuQrBgZU?si=mFRTgHd_v5zADKGl\" frameBorder=\"0\"></iframe>\n<p></p>\n',0,'2024-06-20 19:51:18',NULL),(35,2,16,'<p>tuyệt vời</p>\n',0,'2024-06-27 09:32:58',NULL),(36,2,16,'<p>tuyệt vời quá</p>\n',1,'2024-06-27 09:33:07',NULL),(38,2,17,'<p>Hay và ý nghĩa</p>\n',0,'2024-07-04 23:29:28',NULL),(39,1,17,'<p>Hãy tập hợp vào ngày 4</p>\n',1,'2024-07-04 23:30:19',NULL),(40,35,17,'<p>sdf</p>\n',1,'2024-07-05 11:30:17',NULL);
/*!40000 ALTER TABLE `tv_binh_luan_da` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_thich_bv`
--

DROP TABLE IF EXISTS `tv_thich_bv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_thich_bv` (
  `MaBaiViet` int NOT NULL,
  `MaThanhVien` int NOT NULL,
  `DaThich` tinyint DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  PRIMARY KEY (`MaBaiViet`,`MaThanhVien`),
  KEY `MaThanhVien_thich_idx` (`MaThanhVien`),
  CONSTRAINT `MaBaiViet_thich` FOREIGN KEY (`MaBaiViet`) REFERENCES `bai_viet` (`MaBaiViet`),
  CONSTRAINT `MaThanhVien_thich` FOREIGN KEY (`MaThanhVien`) REFERENCES `thanh_vien` (`MaThanhVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_thich_bv`
--

LOCK TABLES `tv_thich_bv` WRITE;
/*!40000 ALTER TABLE `tv_thich_bv` DISABLE KEYS */;
INSERT INTO `tv_thich_bv` VALUES (35,2,1,'2024-06-07 13:05:23','2024-07-03 22:54:49'),(35,6,1,'2024-06-07 13:06:44','2024-06-07 14:14:07'),(35,16,1,'2024-06-06 15:01:42','2024-06-26 17:09:42'),(40,1,1,'2024-06-27 13:40:16',NULL),(40,2,1,'2024-06-30 17:04:36','2024-07-03 22:42:15'),(40,16,0,'2024-06-27 13:40:35','2024-07-03 22:56:32'),(41,1,1,'2024-07-04 21:48:44','2024-07-04 23:37:23'),(41,2,1,'2024-07-04 23:56:54',NULL),(41,16,1,'2024-07-04 21:45:55','2024-07-04 23:56:28'),(41,17,1,'2024-07-04 21:46:30','2024-07-04 23:57:16');
/*!40000 ALTER TABLE `tv_thich_bv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vai_tro_tham_gia_da`
--

DROP TABLE IF EXISTS `vai_tro_tham_gia_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vai_tro_tham_gia_da` (
  `MaVaiTroThamGiaDA` int NOT NULL AUTO_INCREMENT,
  `TenVaiTro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaVaiTroThamGiaDA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro_tham_gia_da`
--

LOCK TABLES `vai_tro_tham_gia_da` WRITE;
/*!40000 ALTER TABLE `vai_tro_tham_gia_da` DISABLE KEYS */;
INSERT INTO `vai_tro_tham_gia_da` VALUES (1,'Trưởng dự án'),(2,'Phó dự án'),(3,'Thành Viên');
/*!40000 ALTER TABLE `vai_tro_tham_gia_da` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-27 21:40:57

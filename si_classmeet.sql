-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 03:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_classmeet`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftars`
--

CREATE TABLE `daftars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_lomba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daftars`
--

INSERT INTO `daftars` (`id`, `nama`, `nama_kelas`, `jenis_lomba`, `created_at`, `updated_at`) VALUES
(1, 'sabrina,silvi,rina,hafiz,andi', 'XI PPLG 2', 'MobileLegend', '2023-03-15 20:49:12', '2023-03-15 20:49:12'),
(9, 'rava,alif,zikri,rendi,ahmad', 'X ANM 1', 'BolaBasket', '2023-05-02 20:38:09', '2023-05-02 20:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lomba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `nama_lomba`, `nama_kelas`, `hari`, `waktu`, `created_at`, `updated_at`) VALUES
(7, 'BolaBasket', 'XI BCF 1 VS XI TKR 2', 'Kamis,17-08-2023', '09.15-09.30', NULL, NULL),
(8, 'BolaBasket', 'X TO 1 VS XI TO 1', 'Kamis,17-08-2023', '09.30-09.45', NULL, NULL),
(9, 'BolaBasket', 'XII TKR 2 VS XII TPFL', 'Kamis,17-08-2023', '09.45-10.00', NULL, NULL),
(10, 'BolaBasket', 'XI TO 2 VS X TO 2', 'Kamis,17-08-2023', '10.00-10.15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lombas`
--

CREATE TABLE `lombas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juklak_juknis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lombas`
--

INSERT INTO `lombas` (`id`, `foto`, `judul`, `juklak_juknis`, `kontak`, `created_at`, `updated_at`) VALUES
(1, 'WhatsApp Image 2023-05-02 at 23.01.03.jpeg', 'Bolabasket', '<div>&nbsp;1. Peserta di larang memprovokasi dan berkata kotor.<br>2. Urutan pertandingan akan di tentukan dari hasil undian.<br>3. Jika tim belum hadir saat pertandingan dimulai maksimal 10 menit,maka didiskualifikasi.</div><div><br></div>', 987654, '2023-03-15 17:49:08', '2023-05-02 20:01:56'),
(3, 'voly.jpeg', 'BolaVolly', '<div>1. Peserta dilarang membawa atau memakai aksesoris berbahaya.<br>2. Jika tim belum hadir saat pertandingan dimulai,maka tim tersebut akan dipindahkan ke pertandingan terakhir.<br>3. Peserta yang tidak hadir maka akan di diskualifikasi.<br><br></div>', 987765, '2023-03-15 17:56:53', '2023-05-02 20:05:52'),
(6, 'ml.jpeg', 'MobileLegends', '<div>&nbsp;1.Tim diwajibkan membawa perlengkapan lomba sendiri</div><div>2. tim beranggotakan 5 pemain inti (wajib) dan 1 pemain cadangan (opsional).<br>3.Tim dilarang mengganti pemain yang sudah terdaftar&nbsp;<br><br></div>', 87654357654, '2023-03-29 22:43:02', '2023-05-02 20:10:55'),
(7, 'WhatsApp Image 2023-05-02 at 23.41.22.jpeg', 'Dodgeball', '<div>1. Pemain yang terpijak garisan akan dikeluarkan serta merta.<br>2. Setiap pasukan akan bermain selama 10 menit.<br>3. Bola harus di baling dan tidak boleh berada didalam kawasan sendiri.</div>', 98765321, '2023-03-29 22:50:15', '2023-05-02 20:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_02_16_020323_create_lombas_table', 1),
(5, '2023_02_16_021214_create_daftars_table', 1),
(6, '2023_02_16_022939_create_jadwals_table', 1),
(7, '2023_03_21_155619_create_pemenangs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemenangs`
--

CREATE TABLE `pemenangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto_lomba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perlombaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juara_satu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juara_dua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juara_tiga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemenangs`
--

INSERT INTO `pemenangs` (`id`, `foto_lomba`, `nama_perlombaan`, `juara_satu`, `juara_dua`, `juara_tiga`, `created_at`, `updated_at`) VALUES
(1, 'WhatsApp Image 2023-05-01 at 20.30.18.jpeg', 'BolaBasket', 'XI PPLG 2', 'XI PPLG 1', 'XI PPLG 3', '2023-03-21 23:02:08', '2023-05-01 06:34:53'),
(2, 'WhatsApp Image 2023-05-02 at 20.34.05.jpeg', 'BolaVolly', 'XI TO 2', 'XI PPLG 2', 'XI BCF 2', '2023-03-21 23:04:46', '2023-05-02 06:35:45'),
(3, 'WhatsApp Image 2023-05-02 at 20.33.44.jpeg', 'MobileLegends', 'X PPLG 2', 'XI PPLG 2', 'XI BCF 1', '2023-03-26 02:32:02', '2023-05-02 06:36:08'),
(4, 'WhatsApp Image 2023-05-01 at 20.31.10.jpeg', 'Dodgeball', 'XI TO 2', 'XII TKR 2', 'XII PPLG 2', '2023-03-30 09:04:19', '2023-05-01 06:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','siswa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siswa',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$6lhhBymS5yS5.VydzT.L2.Dal6Z4XqMqyPSlgOxEavHY85YoYbXZS', 'admin', NULL, '2023-03-14 20:55:41', '2023-03-14 20:55:41'),
(2, 'lala', 'lala123@gmail.com', NULL, '$2y$10$9YbM5nWTKi00Wtohgbr1jux2BQC0UeH.LxQoxrJmRDohE3Ap.Z22C', 'siswa', NULL, '2023-03-14 21:01:28', '2023-03-14 21:01:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftars`
--
ALTER TABLE `daftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lombas`
--
ALTER TABLE `lombas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemenangs`
--
ALTER TABLE `pemenangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftars`
--
ALTER TABLE `daftars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lombas`
--
ALTER TABLE `lombas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pemenangs`
--
ALTER TABLE `pemenangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

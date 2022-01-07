
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CPUID2_SSE42 ;
 scalar_t__ ID_AA64ISAR0_CRC32_NONE ;
 scalar_t__ ID_AA64ISAR0_CRC32_VAL (int ) ;
 int READ_SPECIALREG (int ) ;
 int armv8_crc32c (int ,unsigned char const*,unsigned int) ;
 int cpu_feature2 ;
 int id_aa64isar0_el1 ;
 int multitable_crc32c (int ,unsigned char const*,unsigned int) ;
 int singletable_crc32c (int ,unsigned char const*,unsigned int) ;
 int sse42_crc32c (int ,unsigned char const*,unsigned int) ;

uint32_t
calculate_crc32c(uint32_t crc32c,
    const unsigned char *buffer,
    unsigned int length)
{
 if (length < 4) {
  return (singletable_crc32c(crc32c, buffer, length));
 } else {
  return (multitable_crc32c(crc32c, buffer, length));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32Table ;

__attribute__((used)) static uint32_t
singletable_crc32c(uint32_t crc, const void *buf, size_t size)
{
 const uint8_t *p = buf;


 while (size--)
  crc = crc32Table[(crc ^ *p++) & 0xff] ^ (crc >> 8);

 return crc;
}

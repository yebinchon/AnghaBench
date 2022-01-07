
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32_tab ;

__attribute__((used)) static __inline uint32_t
crc32(const void *buf, size_t size)
{
 const uint8_t *p = buf;
 uint32_t crc;

 crc = ~0U;
 while (size--)
  crc = crc32_tab[(crc ^ *p++) & 0xFF] ^ (crc >> 8);
 return (crc ^ ~0U);
}

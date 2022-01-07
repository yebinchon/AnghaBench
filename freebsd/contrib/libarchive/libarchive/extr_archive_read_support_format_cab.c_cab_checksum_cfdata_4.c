
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int archive_le32dec (unsigned char const*) ;

__attribute__((used)) static uint32_t
cab_checksum_cfdata_4(const void *p, size_t bytes, uint32_t seed)
{
 const unsigned char *b;
 unsigned u32num;
 uint32_t sum;

 u32num = (unsigned)bytes / 4;
 sum = seed;
 b = p;
 for (;u32num > 0; --u32num) {
  sum ^= archive_le32dec(b);
  b += 4;
 }
 return (sum);
}

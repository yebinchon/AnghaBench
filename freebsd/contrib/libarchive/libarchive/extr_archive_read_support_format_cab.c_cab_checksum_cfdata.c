
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cab_checksum_cfdata_4 (void const*,size_t,int) ;

__attribute__((used)) static uint32_t
cab_checksum_cfdata(const void *p, size_t bytes, uint32_t seed)
{
 const unsigned char *b;
 uint32_t sum;
 uint32_t t;

 sum = cab_checksum_cfdata_4(p, bytes, seed);
 b = p;
 b += bytes & ~3;
 t = 0;
 switch (bytes & 3) {
 case 3:
  t |= ((uint32_t)(*b++)) << 16;

 case 2:
  t |= ((uint32_t)(*b++)) << 8;

 case 1:
  t |= *b;

 default:
  break;
 }
 sum ^= t;

 return (sum);
}

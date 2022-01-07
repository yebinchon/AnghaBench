
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int count_bits(const u8 *val, size_t len)
{
 size_t i;
 unsigned int bits;
 u8 tmp;

 for (i = 0; i < len; i++) {
  if (val[i])
   break;
 }
 if (i == len)
  return 0;

 bits = (len - i - 1) * 8;
 tmp = val[i];
 while (tmp) {
  bits++;
  tmp >>= 1;
 }

 return bits;
}

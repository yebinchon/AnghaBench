
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 rotate_bits(u8 octet)
{
 int i;
 u8 res;

 res = 0;
 for (i = 0; i < 8; i++) {
  res <<= 1;
  if (octet & 1)
   res |= 1;
  octet >>= 1;
 }

 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const BIT (int) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int ,int) ;
 int shift_right_block (int*) ;
 int xor_block (int*,int*) ;

__attribute__((used)) static void gf_mult(const u8 *x, const u8 *y, u8 *z)
{
 u8 v[16];
 int i, j;

 os_memset(z, 0, 16);
 os_memcpy(v, y, 16);

 for (i = 0; i < 16; i++) {
  for (j = 0; j < 8; j++) {
   if (x[i] & BIT(7 - j)) {

    xor_block(z, v);
   } else {

   }

   if (v[15] & 0x01) {

    shift_right_block(v);

    v[0] ^= 0xe1;
   } else {

    shift_right_block(v);
   }
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int tmp ;


 int gf_mult (int const*,int const*,int const*) ;
 int os_memcpy (int const*,int const*,int) ;
 int os_memset (int const*,int ,int) ;
 int xor_block (int const*,int const*) ;

__attribute__((used)) static void ghash(const u8 *h, const u8 *x, size_t xlen, u8 *y)
{
 size_t m, i;
 const u8 *xpos = x;
 u8 tmp[16];

 m = xlen / 16;

 for (i = 0; i < m; i++) {

  xor_block(y, xpos);
  xpos += 16;




  gf_mult(y, h, tmp);
  os_memcpy(y, tmp, 16);
 }

 if (x + xlen > xpos) {

  size_t last = x + xlen - xpos;
  os_memcpy(tmp, xpos, last);
  os_memset(tmp + last, 0, sizeof(tmp) - last);


  xor_block(y, tmp);




  gf_mult(y, h, tmp);
  os_memcpy(y, tmp, 16);
 }


}

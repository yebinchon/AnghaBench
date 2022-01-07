
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;
typedef int blf_ctx ;


 int Blowfish_decipher (int *,int *,int *) ;

void
blf_dec(blf_ctx *c, u_int32_t *data, u_int16_t blocks)
{
 u_int32_t *d;
 u_int16_t i;

 d = data;
 for (i = 0; i < blocks; i++) {
  Blowfish_decipher(c, d, d + 1);
  d += 2;
 }
}

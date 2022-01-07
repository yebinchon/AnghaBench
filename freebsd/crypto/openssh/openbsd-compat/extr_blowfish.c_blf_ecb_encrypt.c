
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int blf_ctx ;


 int Blowfish_encipher (int *,scalar_t__*,scalar_t__*) ;

void
blf_ecb_encrypt(blf_ctx *c, u_int8_t *data, u_int32_t len)
{
 u_int32_t l, r;
 u_int32_t i;

 for (i = 0; i < len; i += 8) {
  l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
  r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
  Blowfish_encipher(c, &l, &r);
  data[0] = l >> 24 & 0xff;
  data[1] = l >> 16 & 0xff;
  data[2] = l >> 8 & 0xff;
  data[3] = l & 0xff;
  data[4] = r >> 24 & 0xff;
  data[5] = r >> 16 & 0xff;
  data[6] = r >> 8 & 0xff;
  data[7] = r & 0xff;
  data += 8;
 }
}

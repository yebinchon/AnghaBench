
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 void** Base64Code ;

__attribute__((used)) static void
encode_base64(u_int8_t *buffer, u_int8_t *data, u_int16_t len)
{
 u_int8_t *bp = buffer;
 u_int8_t *p = data;
 u_int8_t c1, c2;
 while (p < data + len) {
  c1 = *p++;
  *bp++ = Base64Code[(c1 >> 2)];
  c1 = (c1 & 0x03) << 4;
  if (p >= data + len) {
   *bp++ = Base64Code[c1];
   break;
  }
  c2 = *p++;
  c1 |= (c2 >> 4) & 0x0f;
  *bp++ = Base64Code[c1];
  c1 = (c2 & 0x0f) << 2;
  if (p >= data + len) {
   *bp++ = Base64Code[c1];
   break;
  }
  c2 = *p++;
  c1 |= (c2 >> 6) & 0x03;
  *bp++ = Base64Code[c1];
  *bp++ = Base64Code[c2 & 0x3f];
 }
 *bp = '\0';
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int CHAR64 (int const) ;

__attribute__((used)) static void
decode_base64(u_int8_t *buffer, u_int16_t len, const u_int8_t *data)
{
 u_int8_t *bp = buffer;
 const u_int8_t *p = data;
 u_int8_t c1, c2, c3, c4;
 while (bp < buffer + len) {
  c1 = CHAR64(*p);
  c2 = CHAR64(*(p + 1));


  if (c1 == 255 || c2 == 255)
   break;

  *bp++ = (c1 << 2) | ((c2 & 0x30) >> 4);
  if (bp >= buffer + len)
   break;

  c3 = CHAR64(*(p + 2));
  if (c3 == 255)
   break;

  *bp++ = ((c2 & 0x0f) << 4) | ((c3 & 0x3c) >> 2);
  if (bp >= buffer + len)
   break;

  c4 = CHAR64(*(p + 3));
  if (c4 == 255)
   break;
  *bp++ = ((c3 & 0x03) << 6) | c4;

  p += 4;
 }
}

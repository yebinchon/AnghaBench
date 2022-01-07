
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int8_t ;



void
cam_strvis(u_int8_t *dst, const u_int8_t *src, int srclen, int dstlen)
{


 while (srclen > 0 && src[0] == ' ')
  src++, srclen--;
 while (srclen > 0
     && (src[srclen-1] == ' ' || src[srclen-1] == '\0'))
  srclen--;

 while (srclen > 0 && dstlen > 1) {
  u_int8_t *cur_pos = dst;

  if (*src < 0x20 || *src >= 0x80) {


   if (dstlen > 4) {
    *cur_pos++ = '\\';
    *cur_pos++ = ((*src & 0300) >> 6) + '0';
    *cur_pos++ = ((*src & 0070) >> 3) + '0';
    *cur_pos++ = ((*src & 0007) >> 0) + '0';
   } else {
    *cur_pos++ = '?';
   }
  } else {

   *cur_pos++ = *src;
  }
  src++;
  srclen--;
  dstlen -= cur_pos - dst;
  dst = cur_pos;
 }
 *dst = '\0';
}

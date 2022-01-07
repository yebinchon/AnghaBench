
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef char u_int8_t ;
struct sbuf {int dummy; } ;



 int CAM_STRVIS_FLAG_NONASCII_MASK ;



 int sbuf_printf (struct sbuf*,char*,int ,int ,int ) ;
 int sbuf_putc (struct sbuf*,char const) ;

void
cam_strvis_sbuf(struct sbuf *sb, const u_int8_t *src, int srclen,
  uint32_t flags)
{


 while (srclen > 0 && src[0] == ' ')
  src++, srclen--;
 while (srclen > 0
     && (src[srclen-1] == ' ' || src[srclen-1] == '\0'))
  srclen--;

 while (srclen > 0) {
  if (*src < 0x20 || *src >= 0x80) {


   switch (flags & CAM_STRVIS_FLAG_NONASCII_MASK) {
   case 131:
    sbuf_printf(sb, "\\%c%c%c",
        ((*src & 0300) >> 6) + '0',
        ((*src & 0070) >> 3) + '0',
        ((*src & 0007) >> 0) + '0');
    break;
   case 130:




    if (*src != 0x00)
     sbuf_putc(sb, *src);
    else
     sbuf_putc(sb, ' ');
    break;
   case 129:
    sbuf_putc(sb, ' ');
    break;
   case 128:
   default:
    break;
   }
  } else {

   sbuf_putc(sb, *src);
  }
  src++;
  srclen--;
 }
}

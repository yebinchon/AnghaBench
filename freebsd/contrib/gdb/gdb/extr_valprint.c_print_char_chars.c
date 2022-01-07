
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int LA_EMIT_CHAR (unsigned char,struct ui_file*,char) ;
 scalar_t__ TARGET_BYTE_ORDER ;

void
print_char_chars (struct ui_file *stream, unsigned char *valaddr, unsigned len)
{
  unsigned char *p;

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      p = valaddr;
      while (p < valaddr + len - 1 && *p == 0)
 ++p;

      while (p < valaddr + len)
 {
   LA_EMIT_CHAR (*p, stream, '\'');
   ++p;
 }
    }
  else
    {
      p = valaddr + len - 1;
      while (p > valaddr && *p == 0)
 --p;

      while (p >= valaddr)
 {
   LA_EMIT_CHAR (*p, stream, '\'');
   --p;
 }
    }
}

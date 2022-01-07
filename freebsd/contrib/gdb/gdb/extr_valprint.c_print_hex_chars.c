
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int fprintf_filtered (struct ui_file*,char*,unsigned char) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int local_hex_format_prefix () ;
 int local_hex_format_suffix () ;

void
print_hex_chars (struct ui_file *stream, unsigned char *valaddr, unsigned len)
{
  unsigned char *p;



  fputs_filtered (local_hex_format_prefix (), stream);
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      for (p = valaddr;
    p < valaddr + len;
    p++)
 {
   fprintf_filtered (stream, "%02x", *p);
 }
    }
  else
    {
      for (p = valaddr + len - 1;
    p >= valaddr;
    p--)
 {
   fprintf_filtered (stream, "%02x", *p);
 }
    }
  fputs_filtered (local_hex_format_suffix (), stream);
}

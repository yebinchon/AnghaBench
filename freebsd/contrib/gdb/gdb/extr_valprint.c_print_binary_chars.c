
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int BITS_IN_BYTES ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int fprintf_filtered (struct ui_file*,char*,int) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int local_binary_format_prefix () ;
 int local_binary_format_suffix () ;

void
print_binary_chars (struct ui_file *stream, unsigned char *valaddr,
      unsigned len)
{



  unsigned char *p;
  unsigned int i;
  int b;




  const int mask = 0x080;



  fputs_filtered (local_binary_format_prefix (), stream);
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      for (p = valaddr;
    p < valaddr + len;
    p++)
 {



   for (i = 0; i < (8 * sizeof (*p)); i++)
     {
       if (*p & (mask >> i))
  b = 1;
       else
  b = 0;

       fprintf_filtered (stream, "%1d", b);
     }
 }
    }
  else
    {
      for (p = valaddr + len - 1;
    p >= valaddr;
    p--)
 {
   for (i = 0; i < (8 * sizeof (*p)); i++)
     {
       if (*p & (mask >> i))
  b = 1;
       else
  b = 0;

       fprintf_filtered (stream, "%1d", b);
     }
 }
    }
  fputs_filtered (local_binary_format_suffix (), stream);
}

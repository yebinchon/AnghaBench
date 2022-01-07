
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ sevenbit_strings ;

__attribute__((used)) static void
printchar (int c, void (*do_fputs) (const char *, struct ui_file *),
    void (*do_fprintf) (struct ui_file *, const char *, ...),
    struct ui_file *stream, int quoter)
{

  c &= 0xFF;

  if (c < 0x20 ||
      (c >= 0x7F && c < 0xA0) ||
      (sevenbit_strings && c >= 0x80))
    {
      switch (c)
 {
 case '\n':
   do_fputs ("\\n", stream);
   break;
 case '\b':
   do_fputs ("\\b", stream);
   break;
 case '\t':
   do_fputs ("\\t", stream);
   break;
 case '\f':
   do_fputs ("\\f", stream);
   break;
 case '\r':
   do_fputs ("\\r", stream);
   break;
 case '\033':
   do_fputs ("\\e", stream);
   break;
 case '\007':
   do_fputs ("\\a", stream);
   break;
 default:
   do_fprintf (stream, "\\%.3o", (unsigned int) c);
   break;
 }
    }
  else
    {
      if (c == '\\' || c == quoter)
 do_fputs ("\\", stream);
      do_fprintf (stream, "%c", c);
    }
}

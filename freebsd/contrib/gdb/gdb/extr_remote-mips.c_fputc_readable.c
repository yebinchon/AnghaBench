
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 int fputc_unfiltered (int,struct ui_file*) ;

__attribute__((used)) static void
fputc_readable (int ch, struct ui_file *file)
{
  if (ch == '\n')
    fputc_unfiltered ('\n', file);
  else if (ch == '\r')
    fprintf_unfiltered (file, "\\r");
  else if (ch < 0x20)
    fprintf_unfiltered (file, "^%c", ch + '@');
  else if (ch >= 0x7f)
    fprintf_unfiltered (file, "[%02x]", ch & 0xff);
  else
    fputc_unfiltered (ch, file);
}

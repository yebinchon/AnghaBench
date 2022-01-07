
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fputc_readable (int,struct ui_file*) ;

__attribute__((used)) static void
fputs_readable (const char *string, struct ui_file *file)
{
  int c;

  while ((c = *string++) != '\0')
    fputc_readable (c, file);
}

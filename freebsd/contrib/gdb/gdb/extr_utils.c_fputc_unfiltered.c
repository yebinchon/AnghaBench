
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int ui_file_write (struct ui_file*,char*,int) ;

int
fputc_unfiltered (int c, struct ui_file *stream)
{
  char buf = c;
  ui_file_write (stream, &buf, 1);
  return c;
}

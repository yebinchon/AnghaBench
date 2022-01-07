
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fprintf_filtered (struct ui_file*,char*,int) ;

void
scm_printchar (int c, struct ui_file *stream)
{
  fprintf_filtered (stream, "#\\%c", c);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct accumulated_ui_file {char* buffer; long length; } ;


 int do_ui_file_xstrdup ;
 int ui_file_put (struct ui_file*,int ,struct accumulated_ui_file*) ;
 char* xstrdup (char*) ;

char *
ui_file_xstrdup (struct ui_file *file,
    long *length)
{
  struct accumulated_ui_file acc;
  acc.buffer = ((void*)0);
  acc.length = 0;
  ui_file_put (file, do_ui_file_xstrdup, &acc);
  if (acc.buffer == ((void*)0))
    acc.buffer = xstrdup ("");
  *length = acc.length;
  return acc.buffer;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_isatty_ftype ;
struct ui_file {int * to_isatty; } ;



void
set_ui_file_isatty (struct ui_file *file, ui_file_isatty_ftype *isatty)
{
  file->to_isatty = isatty;
}

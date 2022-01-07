
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_write_ftype ;
struct ui_file {int * to_write; } ;



void
set_ui_file_write (struct ui_file *file,
      ui_file_write_ftype *write)
{
  file->to_write = write;
}

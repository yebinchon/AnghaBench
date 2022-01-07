
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_read_ftype ;
struct ui_file {int * to_read; } ;



void
set_ui_file_read (struct ui_file *file, ui_file_read_ftype *read)
{
  file->to_read = read;
}

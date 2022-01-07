
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_put_ftype ;
struct ui_file {int * to_put; } ;



void
set_ui_file_put (struct ui_file *file, ui_file_put_ftype *put)
{
  file->to_put = put;
}

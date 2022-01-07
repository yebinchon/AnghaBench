
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_delete_ftype ;
struct ui_file {int * to_delete; void* to_data; } ;



void
set_ui_file_data (struct ui_file *file, void *data,
    ui_file_delete_ftype *delete)
{
  file->to_data = data;
  file->to_delete = delete;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_fputs_ftype ;
struct ui_file {int * to_fputs; } ;



void
set_ui_file_fputs (struct ui_file *file, ui_file_fputs_ftype *fputs)
{
  file->to_fputs = fputs;
}

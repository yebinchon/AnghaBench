
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int (* to_isatty ) (struct ui_file*) ;} ;


 int stub1 (struct ui_file*) ;

int
ui_file_isatty (struct ui_file *file)
{
  return file->to_isatty (file);
}

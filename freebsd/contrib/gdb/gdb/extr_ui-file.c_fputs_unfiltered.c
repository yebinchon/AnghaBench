
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int (* to_fputs ) (char const*,struct ui_file*) ;} ;


 int stub1 (char const*,struct ui_file*) ;

void
fputs_unfiltered (const char *buf, struct ui_file *file)
{
  file->to_fputs (buf, file);
}

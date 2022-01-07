
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ui_file_put_method_ftype ;
struct ui_file {int (* to_put ) (struct ui_file*,int *,void*) ;} ;


 int stub1 (struct ui_file*,int *,void*) ;

void
ui_file_put (struct ui_file *file,
       ui_file_put_method_ftype *write,
       void *dest)
{
  file->to_put (file, write, dest);
}

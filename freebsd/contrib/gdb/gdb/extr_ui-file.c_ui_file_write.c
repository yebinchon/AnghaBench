
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int (* to_write ) (struct ui_file*,char const*,long) ;} ;


 int stub1 (struct ui_file*,char const*,long) ;

void
ui_file_write (struct ui_file *file,
  const char *buf,
  long length_buf)
{
  file->to_write (file, buf, length_buf);
}

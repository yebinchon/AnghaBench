
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {long (* to_read ) (struct ui_file*,char*,long) ;} ;


 long stub1 (struct ui_file*,char*,long) ;

long
ui_file_read (struct ui_file *file, char *buf, long length_buf)
{
  return file->to_read (file, buf, length_buf);
}

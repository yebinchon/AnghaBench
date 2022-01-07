
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int EBADF ;
 int errno ;

__attribute__((used)) static long
null_file_read (struct ui_file *file,
  char *buf,
  long sizeof_buf)
{
  errno = EBADF;
  return 0;
}

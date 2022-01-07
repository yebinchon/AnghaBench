
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_callback ;


 int gdb_stdtarg ;
 int ui_file_write (int ,char const*,int) ;

__attribute__((used)) static int
gdb_os_write_stdout (host_callback *p, const char *buf, int len)
{
  int i;
  char b[2];

  ui_file_write (gdb_stdtarg, buf, len);
  return len;
}

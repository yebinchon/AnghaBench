
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int ui_file_write (int ,char*,int) ;

int
putchar_unfiltered (int c)
{
  char buf = c;
  ui_file_write (gdb_stdout, &buf, 1);
  return c;
}

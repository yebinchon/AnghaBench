
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc_filtered (int,int ) ;
 int gdb_stdout ;

int
putchar_filtered (int c)
{
  return fputc_filtered (c, gdb_stdout);
}

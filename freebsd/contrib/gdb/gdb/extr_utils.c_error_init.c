
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_lasterr ;
 int mem_fileopen () ;

void
error_init (void)
{
  gdb_lasterr = mem_fileopen ();
}

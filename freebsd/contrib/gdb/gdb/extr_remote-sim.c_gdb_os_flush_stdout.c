
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_callback ;


 int gdb_flush (int ) ;
 int gdb_stdtarg ;

__attribute__((used)) static void
gdb_os_flush_stdout (host_callback *p)
{
  gdb_flush (gdb_stdtarg);
}

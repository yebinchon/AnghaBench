
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_disable_readline () ;

__attribute__((used)) static int
mi_interpreter_suspend (void *data)
{
  gdb_disable_readline ();
  return 1;
}

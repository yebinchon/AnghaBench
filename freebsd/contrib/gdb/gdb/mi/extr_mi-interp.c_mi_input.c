
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gdb_readline (int *) ;

__attribute__((used)) static char *
mi_input (char *buf)
{
  return gdb_readline (((void*)0));
}

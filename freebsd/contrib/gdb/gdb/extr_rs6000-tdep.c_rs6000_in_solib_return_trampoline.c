
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int strncmp (char*,char*,int) ;

int
rs6000_in_solib_return_trampoline (CORE_ADDR pc, char *name)
{
  return name && !strncmp (name, "@FIX", 4);
}

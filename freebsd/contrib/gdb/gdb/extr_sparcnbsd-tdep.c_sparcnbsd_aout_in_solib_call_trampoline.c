
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int strcmp (char*,char*) ;

__attribute__((used)) static int
sparcnbsd_aout_in_solib_call_trampoline (CORE_ADDR pc, char *name)
{
  return (name && !strcmp (name, "_DYNAMIC"));
}

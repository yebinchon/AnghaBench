
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_SO_IN_DYNSYM_RESOLVE_CODE (int ) ;

int
in_solib_dynsym_resolve_code (CORE_ADDR pc)
{
  return TARGET_SO_IN_DYNSYM_RESOLVE_CODE (pc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ set_breakpoint (int ,int,int) ;

int
mips_insert_watchpoint (CORE_ADDR addr, int len, int type)
{
  if (set_breakpoint (addr, len, type))
    return -1;

  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hit_watchpoint ;

int
mips_stopped_by_watchpoint (void)
{
  return hit_watchpoint;
}

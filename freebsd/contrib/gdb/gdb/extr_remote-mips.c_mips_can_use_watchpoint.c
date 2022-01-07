
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_LSI_BREAKPOINTS ;
 scalar_t__ strcmp (int ,char*) ;
 int target_shortname ;

int
mips_can_use_watchpoint (int type, int cnt, int othertype)
{
  return cnt < MAX_LSI_BREAKPOINTS && strcmp (target_shortname, "lsi") == 0;
}

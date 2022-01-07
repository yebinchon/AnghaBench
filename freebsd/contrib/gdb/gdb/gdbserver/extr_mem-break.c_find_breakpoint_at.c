
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ pc; struct breakpoint* next; } ;
typedef scalar_t__ CORE_ADDR ;


 struct breakpoint* breakpoints ;

__attribute__((used)) static struct breakpoint *
find_breakpoint_at (CORE_ADDR where)
{
  struct breakpoint *bp = breakpoints;

  while (bp != ((void*)0))
    {
      if (bp->pc == where)
 return bp;
      bp = bp->next;
    }

  return ((void*)0);
}

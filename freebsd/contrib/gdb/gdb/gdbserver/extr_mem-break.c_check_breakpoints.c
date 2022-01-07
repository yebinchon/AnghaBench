
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int pc; int (* handler ) (int ) ;scalar_t__ reinserting; } ;
typedef int CORE_ADDR ;


 struct breakpoint* find_breakpoint_at (int ) ;
 int stub1 (int ) ;
 int warning (char*) ;

int
check_breakpoints (CORE_ADDR stop_pc)
{
  struct breakpoint *bp;

  bp = find_breakpoint_at (stop_pc);
  if (bp == ((void*)0))
    return 0;
  if (bp->reinserting)
    {
      warning ("Hit a removed breakpoint?");
      return 0;
    }

  (*bp->handler) (bp->pc);
  return 1;
}

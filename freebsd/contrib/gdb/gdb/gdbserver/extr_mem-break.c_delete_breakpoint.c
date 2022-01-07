
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {int old_data; int pc; struct breakpoint* next; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int ,int ) ;} ;


 int breakpoint_len ;
 struct breakpoint* breakpoints ;
 int free (struct breakpoint*) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 TYPE_1__* the_target ;
 int warning (char*) ;

__attribute__((used)) static void
delete_breakpoint (struct breakpoint *bp)
{
  struct breakpoint *cur;

  if (breakpoints == bp)
    {
      breakpoints = bp->next;
      (*the_target->write_memory) (bp->pc, bp->old_data,
       breakpoint_len);
      free (bp);
      return;
    }
  cur = breakpoints;
  while (cur->next)
    {
      if (cur->next == bp)
 {
   cur->next = bp->next;
   (*the_target->write_memory) (bp->pc, bp->old_data,
           breakpoint_len);
   free (bp);
   return;
 }
    }
  warning ("Could not find breakpoint in list.");
}

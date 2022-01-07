
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {int reinserting; int old_data; int pc; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int ,int ) ;} ;
typedef int CORE_ADDR ;


 int breakpoint_len ;
 int error (char*) ;
 struct breakpoint* find_breakpoint_at (int ) ;
 int stub1 (int ,int ,int ) ;
 TYPE_1__* the_target ;

void
uninsert_breakpoint (CORE_ADDR stopped_at)
{
  struct breakpoint *bp;

  bp = find_breakpoint_at (stopped_at);
  if (bp == ((void*)0))
    error ("Could not find breakpoint in list (uninserting).");

  (*the_target->write_memory) (bp->pc, bp->old_data,
          breakpoint_len);
  bp->reinserting = 1;
}

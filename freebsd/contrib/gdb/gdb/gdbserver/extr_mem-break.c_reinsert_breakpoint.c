
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {scalar_t__ reinserting; int pc; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int ,int ) ;} ;
typedef int CORE_ADDR ;


 int breakpoint_data ;
 int breakpoint_len ;
 int error (char*) ;
 struct breakpoint* find_breakpoint_at (int ) ;
 int stub1 (int ,int ,int ) ;
 TYPE_1__* the_target ;

void
reinsert_breakpoint (CORE_ADDR stopped_at)
{
  struct breakpoint *bp;

  bp = find_breakpoint_at (stopped_at);
  if (bp == ((void*)0))
    error ("Could not find breakpoint in list (uninserting).");
  if (! bp->reinserting)
    error ("Breakpoint already inserted at reinsert time.");

  (*the_target->write_memory) (bp->pc, breakpoint_data,
          breakpoint_len);
  bp->reinserting = 0;
}

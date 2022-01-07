
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {int reinserting; int old_data; int pc; struct breakpoint* breakpoint_to_reinsert; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int ,int ) ;} ;
typedef int CORE_ADDR ;


 int breakpoint_len ;
 int error (char*) ;
 struct breakpoint* find_breakpoint_at (int ) ;
 int reinsert_breakpoint_handler ;
 int set_breakpoint_at (int ,int ) ;
 int stub1 (int ,int ,int ) ;
 TYPE_1__* the_target ;

void
reinsert_breakpoint_by_bp (CORE_ADDR stop_pc, CORE_ADDR stop_at)
{
  struct breakpoint *bp, *orig_bp;

  set_breakpoint_at (stop_at, reinsert_breakpoint_handler);

  orig_bp = find_breakpoint_at (stop_pc);
  if (orig_bp == ((void*)0))
    error ("Could not find original breakpoint in list.");

  bp = find_breakpoint_at (stop_at);
  if (bp == ((void*)0))
    error ("Could not find breakpoint in list (reinserting by breakpoint).");
  bp->breakpoint_to_reinsert = orig_bp;

  (*the_target->write_memory) (orig_bp->pc, orig_bp->old_data,
          breakpoint_len);
  orig_bp->reinserting = 1;
}

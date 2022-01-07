
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {scalar_t__ reinserting; int pc; struct breakpoint* breakpoint_to_reinsert; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int ,int ) ;} ;
typedef int CORE_ADDR ;


 int breakpoint_data ;
 int breakpoint_len ;
 int delete_breakpoint (struct breakpoint*) ;
 int error (char*) ;
 struct breakpoint* find_breakpoint_at (int ) ;
 int stub1 (int ,int ,int ) ;
 TYPE_1__* the_target ;

__attribute__((used)) static void
reinsert_breakpoint_handler (CORE_ADDR stop_pc)
{
  struct breakpoint *stop_bp, *orig_bp;

  stop_bp = find_breakpoint_at (stop_pc);
  if (stop_bp == ((void*)0))
    error ("lost the stopping breakpoint.");

  orig_bp = stop_bp->breakpoint_to_reinsert;
  if (orig_bp == ((void*)0))
    error ("no breakpoint to reinsert");

  (*the_target->write_memory) (orig_bp->pc, breakpoint_data,
          breakpoint_len);
  orig_bp->reinserting = 0;
  delete_breakpoint (stop_bp);
}

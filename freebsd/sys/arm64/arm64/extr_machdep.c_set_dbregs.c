
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct debug_monitor_state {scalar_t__ dbg_enable_count; int* dbg_bcr; int dbg_flags; int * dbg_bvr; } ;
struct dbreg {TYPE_2__* db_regs; } ;
struct TYPE_4__ {int dbr_ctrl; int dbr_addr; } ;
struct TYPE_3__ {struct debug_monitor_state pcb_dbg_regs; } ;


 int DBGMON_ENABLED ;
 int DBG_BRP_MAX ;

int
set_dbregs(struct thread *td, struct dbreg *regs)
{
 struct debug_monitor_state *monitor;
 int count;
 int i;

 monitor = &td->td_pcb->pcb_dbg_regs;
 count = 0;
 monitor->dbg_enable_count = 0;
 for (i = 0; i < DBG_BRP_MAX; i++) {

  monitor->dbg_bvr[i] = regs->db_regs[i].dbr_addr;
  monitor->dbg_bcr[i] = regs->db_regs[i].dbr_ctrl;
  if ((monitor->dbg_bcr[i] & 1) != 0)
   monitor->dbg_enable_count++;
 }
 if (monitor->dbg_enable_count > 0)
  monitor->dbg_flags |= DBGMON_ENABLED;

 return (0);
}

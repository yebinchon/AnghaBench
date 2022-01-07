
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int tf_spsr; } ;
struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_6__ {int dbg_flags; } ;
struct TYPE_5__ {int dbg_flags; } ;
struct TYPE_4__ {TYPE_3__ pcb_dbg_regs; } ;


 int DBGMON_ENABLED ;
 int DBG_MDSCR_KDE ;
 int DBG_MDSCR_MDE ;
 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int PSR_D ;
 int READ_SPECIALREG (int ) ;
 int WRITE_SPECIALREG (int ,int) ;
 int dbg_breakpoint_num ;
 int dbg_register_sync (TYPE_3__*) ;
 int dbg_watchpoint_num ;
 int dbg_wb_write_reg (int ,int,int ) ;
 int isb () ;
 TYPE_2__ kernel_monitor ;
 int mdscr_el1 ;

void
dbg_monitor_exit(struct thread *thread, struct trapframe *frame)
{
 int i;

 frame->tf_spsr |= PSR_D;
 if ((thread->td_pcb->pcb_dbg_regs.dbg_flags & DBGMON_ENABLED) != 0) {

  dbg_register_sync(&thread->td_pcb->pcb_dbg_regs);
  frame->tf_spsr &= ~PSR_D;
 } else if ((kernel_monitor.dbg_flags & DBGMON_ENABLED) != 0) {

  for (i = 0; i < dbg_watchpoint_num; i++) {
   dbg_wb_write_reg(DBG_REG_BASE_WCR, i, 0);
   dbg_wb_write_reg(DBG_REG_BASE_WVR, i, 0);
  }

  for (i = 0; i < dbg_breakpoint_num; ++i) {
   dbg_wb_write_reg(DBG_REG_BASE_BCR, i, 0);
   dbg_wb_write_reg(DBG_REG_BASE_BVR, i, 0);
  }
  WRITE_SPECIALREG(mdscr_el1,
      READ_SPECIALREG(mdscr_el1) &
      ~(DBG_MDSCR_MDE | DBG_MDSCR_KDE));
  isb();
 }
}

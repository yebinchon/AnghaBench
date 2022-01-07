
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct debug_monitor_state {int dbg_flags; int * dbg_wvr; int * dbg_wcr; int * dbg_bvr; int * dbg_bcr; } ;


 int DBGMON_ENABLED ;
 int DBGMON_KERNEL ;
 int DBG_MDSCR_KDE ;
 int DBG_MDSCR_MDE ;
 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int READ_SPECIALREG (int ) ;
 int WRITE_SPECIALREG (int ,int) ;
 int dbg_breakpoint_num ;
 int dbg_watchpoint_num ;
 int dbg_wb_write_reg (int ,int,int ) ;
 int isb () ;
 struct debug_monitor_state kernel_monitor ;
 int mdscr_el1 ;

void
dbg_register_sync(struct debug_monitor_state *monitor)
{
 uint64_t mdscr;
 int i;

 if (monitor == ((void*)0))
  monitor = &kernel_monitor;

 mdscr = READ_SPECIALREG(mdscr_el1);
 if ((monitor->dbg_flags & DBGMON_ENABLED) == 0) {
  mdscr &= ~(DBG_MDSCR_MDE | DBG_MDSCR_KDE);
 } else {
  for (i = 0; i < dbg_breakpoint_num; i++) {
   dbg_wb_write_reg(DBG_REG_BASE_BCR, i,
       monitor->dbg_bcr[i]);
   dbg_wb_write_reg(DBG_REG_BASE_BVR, i,
       monitor->dbg_bvr[i]);
  }

  for (i = 0; i < dbg_watchpoint_num; i++) {
   dbg_wb_write_reg(DBG_REG_BASE_WCR, i,
       monitor->dbg_wcr[i]);
   dbg_wb_write_reg(DBG_REG_BASE_WVR, i,
       monitor->dbg_wvr[i]);
  }
  mdscr |= DBG_MDSCR_MDE;
  if ((monitor->dbg_flags & DBGMON_KERNEL) == DBGMON_KERNEL)
   mdscr |= DBG_MDSCR_KDE;
 }
 WRITE_SPECIALREG(mdscr_el1, mdscr);
 isb();
}

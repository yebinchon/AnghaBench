
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;


 int DBGWVR_ADDR_MASK ;
 int DBG_BKPT_BNT_SLOT ;
 int DBG_BKPT_BT_SLOT ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 int DBG_WB_CTRL_E ;
 int dbg_capable () ;
 int dbg_remove_breakpoint (int ) ;
 scalar_t__ dbg_watchpoint_num ;
 int dbg_wb_read_reg (int ,scalar_t__) ;
 int dbg_wb_write_reg (int ,scalar_t__,int) ;

void
kdb_cpu_clear_singlestep(void)
{
 uint32_t wvr, wcr;
 u_int i;

 if (!dbg_capable())
  return;

 dbg_remove_breakpoint(DBG_BKPT_BT_SLOT);
 dbg_remove_breakpoint(DBG_BKPT_BNT_SLOT);


 for (i = 0; i < dbg_watchpoint_num; i++) {
  wcr = dbg_wb_read_reg(DBG_REG_BASE_WCR, i);
  wvr = dbg_wb_read_reg(DBG_REG_BASE_WVR, i);

  if ((wvr & DBGWVR_ADDR_MASK) != 0) {
   dbg_wb_write_reg(DBG_REG_BASE_WCR, i,
       (wcr | DBG_WB_CTRL_E));
  }
 }
}

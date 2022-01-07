
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DBG_REG_BASE_BCR ;
 int DBG_REG_BASE_BVR ;
 int DBG_REG_BASE_WCR ;
 int DBG_REG_BASE_WVR ;
 scalar_t__ PCPU_GET (int ) ;
 int READ_SPECIALREG (int ) ;
 scalar_t__ bootverbose ;
 int cpuid ;
 int dbg_breakpoint_num ;
 int dbg_enable () ;
 int dbg_watchpoint_num ;
 int dbg_wb_write_reg (int ,int,int ) ;
 int id_aa64dfr0_el1 ;
 int printf (char*,int,int) ;

void
dbg_monitor_init(void)
{
 u_int i;


 dbg_watchpoint_num = ((READ_SPECIALREG(id_aa64dfr0_el1) >> 20) & 0xf) + 1;
 dbg_breakpoint_num = ((READ_SPECIALREG(id_aa64dfr0_el1) >> 12) & 0xf) + 1;

 if (bootverbose && PCPU_GET(cpuid) == 0) {
  printf("%d watchpoints and %d breakpoints supported\n",
      dbg_watchpoint_num, dbg_breakpoint_num);
 }
 for (i = 0; i < dbg_watchpoint_num; i++) {
  dbg_wb_write_reg(DBG_REG_BASE_WCR, i, 0);
  dbg_wb_write_reg(DBG_REG_BASE_WVR, i, 0);
 }

 for (i = 0; i < dbg_breakpoint_num; i++) {
  dbg_wb_write_reg(DBG_REG_BASE_BCR, i, 0);
  dbg_wb_write_reg(DBG_REG_BASE_BVR, i, 0);
 }

 dbg_enable();
}

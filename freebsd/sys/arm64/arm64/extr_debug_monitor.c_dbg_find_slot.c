
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct debug_monitor_state {scalar_t__* dbg_wcr; scalar_t__* dbg_wvr; scalar_t__* dbg_bcr; scalar_t__* dbg_bvr; } ;
typedef enum dbg_t { ____Placeholder_dbg_t } dbg_t ;




 scalar_t__ DBG_WB_CTRL_E ;
 int dbg_breakpoint_num ;
 int dbg_watchpoint_num ;
 int printf (char*) ;

__attribute__((used)) static int
dbg_find_slot(struct debug_monitor_state *monitor, enum dbg_t type,
    vm_offset_t addr)
{
 uint64_t *reg_addr, *reg_ctrl;
 u_int max, i;

 switch(type) {
 case 129:
  max = dbg_breakpoint_num;
  reg_addr = monitor->dbg_bvr;
  reg_ctrl = monitor->dbg_bcr;
  break;
 case 128:
  max = dbg_watchpoint_num;
  reg_addr = monitor->dbg_wvr;
  reg_ctrl = monitor->dbg_wcr;
  break;
 default:
  printf("Unsupported debug type\n");
  return (i);
 }

 for (i = 0; i < max; i++) {
  if (reg_addr[i] == addr &&
      (reg_ctrl[i] & DBG_WB_CTRL_E) != 0)
   return (i);
 }

 return (-1);
}

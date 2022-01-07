
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct debug_monitor_state {int* dbg_bcr; int* dbg_wcr; } ;
typedef enum dbg_t { ____Placeholder_dbg_t } dbg_t ;




 int DBG_WB_CTRL_E ;
 int dbg_breakpoint_num ;
 int dbg_watchpoint_num ;
 int printf (char*) ;

__attribute__((used)) static int
dbg_find_free_slot(struct debug_monitor_state *monitor, enum dbg_t type)
{
 uint64_t *reg;
 u_int max, i;

 switch(type) {
 case 129:
  max = dbg_breakpoint_num;
  reg = monitor->dbg_bcr;
  break;
 case 128:
  max = dbg_watchpoint_num;
  reg = monitor->dbg_wcr;
  break;
 default:
  printf("Unsupported debug type\n");
  return (i);
 }

 for (i = 0; i < max; i++) {
  if ((reg[i] & DBG_WB_CTRL_E) == 0)
   return (i);
 }

 return (-1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int u_int ;
struct debug_monitor_state {scalar_t__ dbg_enable_count; int dbg_flags; scalar_t__* dbg_wcr; scalar_t__* dbg_wvr; } ;


 int DBGMON_ENABLED ;
 int DBG_TYPE_WATCHPOINT ;
 int dbg_find_slot (struct debug_monitor_state*,int ,int ) ;
 int dbg_register_sync (struct debug_monitor_state*) ;
 struct debug_monitor_state kernel_monitor ;
 int printf (char*,int ) ;

int
dbg_remove_watchpoint(struct debug_monitor_state *monitor, vm_offset_t addr,
    vm_size_t size)
{
 u_int i;

 if (monitor == ((void*)0))
  monitor = &kernel_monitor;

 i = dbg_find_slot(monitor, DBG_TYPE_WATCHPOINT, addr);
 if (i == -1) {
  printf("Can not find watchpoint for address 0%lx\n", addr);
  return (i);
 }

 monitor->dbg_wvr[i] = 0;
 monitor->dbg_wcr[i] = 0;
 monitor->dbg_enable_count--;
 if (monitor->dbg_enable_count == 0)
  monitor->dbg_flags &= ~DBGMON_ENABLED;

 dbg_register_sync(monitor);
 return (0);
}

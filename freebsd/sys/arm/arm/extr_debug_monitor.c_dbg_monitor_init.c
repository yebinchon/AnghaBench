
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ID_DFR0_CP_DEBUG_M_V6 ;
 scalar_t__ ID_DFR0_CP_DEBUG_M_V6_1 ;
 scalar_t__ ID_DFR0_CP_DEBUG_M_V7 ;
 scalar_t__ ID_DFR0_CP_DEBUG_M_V7_1 ;
 char* PCPU_GET (int ) ;
 int atomic_set_int (int *,int) ;
 scalar_t__ bootverbose ;
 int cpuid ;
 int db_printf (char*,...) ;
 int dbg_arch_supported () ;
 int dbg_breakpoint_num ;
 int dbg_capable_var ;
 int dbg_enable_monitor () ;
 scalar_t__ dbg_get_debug_model () ;
 int dbg_get_ossr () ;
 int dbg_get_wrp_num () ;
 scalar_t__ dbg_model ;
 int dbg_ossr ;
 int dbg_reset_state () ;
 int dbg_watchpoint_num ;
 int dgb_get_brp_num () ;

void
dbg_monitor_init(void)
{
 int err;


 dbg_model = dbg_get_debug_model();

 if (!dbg_arch_supported()) {
  db_printf("ARM Debug Architecture not supported\n");
  return;
 }

 if (bootverbose) {
  db_printf("ARM Debug Architecture %s\n",
      (dbg_model == ID_DFR0_CP_DEBUG_M_V6) ? "v6" :
      (dbg_model == ID_DFR0_CP_DEBUG_M_V6_1) ? "v6.1" :
      (dbg_model == ID_DFR0_CP_DEBUG_M_V7) ? "v7" :
      (dbg_model == ID_DFR0_CP_DEBUG_M_V7_1) ? "v7.1" : "unknown");
 }


 dbg_ossr = dbg_get_ossr();


 dbg_watchpoint_num = dbg_get_wrp_num();
 dbg_breakpoint_num = dgb_get_brp_num();

 if (bootverbose) {
  db_printf("%d watchpoints and %d breakpoints supported\n",
      dbg_watchpoint_num, dbg_breakpoint_num);
 }

 err = dbg_reset_state();
 if (err == 0) {
  err = dbg_enable_monitor();
  if (err == 0) {
   atomic_set_int(&dbg_capable_var, 1);
   return;
  }
 }

 db_printf("HW Breakpoints/Watchpoints not enabled on CPU%d\n",
     PCPU_GET(cpuid));
}

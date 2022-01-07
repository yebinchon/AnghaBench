
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int db_expr_t ;
typedef TYPE_1__* db_breakpoint_t ;
typedef void* db_addr_t ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ init_count; } ;
typedef void* FIXUP_PC_AFTER_BREAK ;


 int BKPT_SKIP ;
 int IS_BREAKPOINT_TRAP (int,int) ;
 scalar_t__ IS_SSTEP_TRAP (int,int) ;
 int IS_WATCHPOINT_TRAP (int,int) ;
 void* PC_REGS () ;
 scalar_t__ STEP_CALLT ;
 scalar_t__ STEP_CONTINUE ;
 scalar_t__ STEP_COUNT ;
 scalar_t__ STEP_INVISIBLE ;
 scalar_t__ STEP_ONCE ;
 scalar_t__ STEP_RETURN ;
 scalar_t__ db_call_depth ;
 int db_clear_breakpoints () ;
 int db_clear_single_step () ;
 int db_clear_watchpoints () ;
 TYPE_1__* db_find_breakpoint_here (void*) ;
 int db_get_value (void*,int,int) ;
 int db_inst_count ;
 scalar_t__ db_loop_count ;
 scalar_t__ db_pc_is_singlestep (void*) ;
 int db_print_loc_and_inst (void*) ;
 int db_printf (char*,...) ;
 scalar_t__ db_run_mode ;
 scalar_t__ db_sstep_print ;
 scalar_t__ inst_call (int ) ;
 scalar_t__ inst_return (int ) ;
 int inst_trap_return (int ) ;
 int printf (char*) ;

bool
db_stop_at_pc(int type, int code, bool *is_breakpoint, bool *is_watchpoint)
{
 db_addr_t pc;
 db_breakpoint_t bkpt;

 *is_breakpoint = IS_BREAKPOINT_TRAP(type, code);
 *is_watchpoint = IS_WATCHPOINT_TRAP(type, code);
 pc = PC_REGS();
 if (db_pc_is_singlestep(pc))
  *is_breakpoint = 0;

 db_clear_single_step();
 db_clear_breakpoints();
 db_clear_watchpoints();
 bkpt = db_find_breakpoint_here(pc);
 if (bkpt) {
     if (--bkpt->count == 0) {
  bkpt->count = bkpt->init_count;
  *is_breakpoint = 1;
  return (1);
     }
     return (0);
 } else if (*is_breakpoint) {



 }

 *is_breakpoint = 0;
 if (db_run_mode == STEP_INVISIBLE) {
     db_run_mode = STEP_CONTINUE;
     return (0);
 }
 if (db_run_mode == STEP_COUNT) {
     return (0);
 }
 if (db_run_mode == STEP_ONCE) {
     if (--db_loop_count > 0) {
  if (db_sstep_print) {
      db_printf("\t\t");
      db_print_loc_and_inst(pc);
  }
  return (0);
     }
 }
 if (db_run_mode == STEP_RETURN) {

     db_expr_t ins;

     ins = db_get_value(pc, sizeof(int), 0);
     if (!inst_trap_return(ins) &&
  (!inst_return(ins) || --db_call_depth != 0)) {
  if (db_sstep_print) {
      if (inst_call(ins) || inst_return(ins)) {
   int i;

   db_printf("[after %6d]     ", db_inst_count);
   for (i = db_call_depth; --i > 0; )
       db_printf("  ");
   db_print_loc_and_inst(pc);
      }
  }
  if (inst_call(ins))
      db_call_depth++;
  return (0);
     }
 }
 if (db_run_mode == STEP_CALLT) {

     db_expr_t ins;

     ins = db_get_value(pc, sizeof(int), 0);
     if (!inst_call(ins) &&
  !inst_return(ins) &&
  !inst_trap_return(ins)) {
  return (0);
     }
 }
 return (1);
}

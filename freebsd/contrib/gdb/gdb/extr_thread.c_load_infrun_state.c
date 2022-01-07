
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {int dummy; } ;
struct thread_info {int trap_expected; int handling_longjmp; int another_trap; int stepping_through_solib_after_catch; int stepping_through_sigtramp; int current_line; int step_sp; struct symtab* current_symtab; int stepping_through_solib_catchpoints; struct frame_id step_frame_id; int step_range_end; int step_range_start; struct breakpoint* through_sigtramp_breakpoint; struct breakpoint* step_resume_breakpoint; int prev_pc; } ;
struct symtab {int dummy; } ;
struct breakpoint {int dummy; } ;
typedef int ptid_t ;
typedef int bpstat ;
typedef int CORE_ADDR ;


 struct thread_info* find_thread_id (int ) ;
 int pid_to_thread_id (int ) ;

void
load_infrun_state (ptid_t ptid,
     CORE_ADDR *prev_pc,
     int *trap_expected,
     struct breakpoint **step_resume_breakpoint,
     struct breakpoint **through_sigtramp_breakpoint,
     CORE_ADDR *step_range_start,
     CORE_ADDR *step_range_end,
     struct frame_id *step_frame_id,
     int *handling_longjmp,
     int *another_trap,
     int *stepping_through_solib_after_catch,
     bpstat *stepping_through_solib_catchpoints,
     int *stepping_through_sigtramp,
     int *current_line,
     struct symtab **current_symtab, CORE_ADDR *step_sp)
{
  struct thread_info *tp;



  tp = find_thread_id (pid_to_thread_id (ptid));
  if (tp == ((void*)0))
    return;

  *prev_pc = tp->prev_pc;
  *trap_expected = tp->trap_expected;
  *step_resume_breakpoint = tp->step_resume_breakpoint;
  *through_sigtramp_breakpoint = tp->through_sigtramp_breakpoint;
  *step_range_start = tp->step_range_start;
  *step_range_end = tp->step_range_end;
  *step_frame_id = tp->step_frame_id;
  *handling_longjmp = tp->handling_longjmp;
  *another_trap = tp->another_trap;
  *stepping_through_solib_after_catch =
    tp->stepping_through_solib_after_catch;
  *stepping_through_solib_catchpoints =
    tp->stepping_through_solib_catchpoints;
  *stepping_through_sigtramp = tp->stepping_through_sigtramp;
  *current_line = tp->current_line;
  *current_symtab = tp->current_symtab;
  *step_sp = tp->step_sp;
}

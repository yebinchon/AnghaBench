
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {int dummy; } ;
struct thread_info {int trap_expected; int handling_longjmp; int another_trap; int stepping_through_solib_after_catch; int stepping_through_sigtramp; int current_line; void* step_sp; struct symtab* current_symtab; int stepping_through_solib_catchpoints; struct frame_id step_frame_id; void* step_range_end; void* step_range_start; struct breakpoint* through_sigtramp_breakpoint; struct breakpoint* step_resume_breakpoint; void* prev_pc; } ;
struct symtab {int dummy; } ;
struct breakpoint {int dummy; } ;
typedef int ptid_t ;
typedef int bpstat ;
typedef void* CORE_ADDR ;


 struct thread_info* find_thread_id (int ) ;
 int pid_to_thread_id (int ) ;

void
save_infrun_state (ptid_t ptid,
     CORE_ADDR prev_pc,
     int trap_expected,
     struct breakpoint *step_resume_breakpoint,
     struct breakpoint *through_sigtramp_breakpoint,
     CORE_ADDR step_range_start,
     CORE_ADDR step_range_end,
     const struct frame_id *step_frame_id,
     int handling_longjmp,
     int another_trap,
     int stepping_through_solib_after_catch,
     bpstat stepping_through_solib_catchpoints,
     int stepping_through_sigtramp,
     int current_line,
     struct symtab *current_symtab, CORE_ADDR step_sp)
{
  struct thread_info *tp;



  tp = find_thread_id (pid_to_thread_id (ptid));
  if (tp == ((void*)0))
    return;

  tp->prev_pc = prev_pc;
  tp->trap_expected = trap_expected;
  tp->step_resume_breakpoint = step_resume_breakpoint;
  tp->through_sigtramp_breakpoint = through_sigtramp_breakpoint;
  tp->step_range_start = step_range_start;
  tp->step_range_end = step_range_end;
  tp->step_frame_id = (*step_frame_id);
  tp->handling_longjmp = handling_longjmp;
  tp->another_trap = another_trap;
  tp->stepping_through_solib_after_catch = stepping_through_solib_after_catch;
  tp->stepping_through_solib_catchpoints = stepping_through_solib_catchpoints;
  tp->stepping_through_sigtramp = stepping_through_sigtramp;
  tp->current_line = current_line;
  tp->current_symtab = current_symtab;
  tp->step_sp = step_sp;
}

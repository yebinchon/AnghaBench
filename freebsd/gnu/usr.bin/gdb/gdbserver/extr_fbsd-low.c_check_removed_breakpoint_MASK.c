#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread_info {int dummy; } ;
struct process_info {scalar_t__ pending_is_breakpoint; scalar_t__ pending_stop_pc; scalar_t__ status_pending; scalar_t__ status_pending_p; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_pc ) (scalar_t__) ;scalar_t__ (* breakpoint_at ) (scalar_t__) ;} ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct thread_info* current_inferior ; 
 scalar_t__ debug_threads ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct thread_info* FUNC1 (struct process_info*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__ the_low_target ; 

__attribute__((used)) static int
FUNC5 (struct process_info *event_child)
{
  CORE_ADDR stop_pc;
  struct thread_info *saved_inferior;

  if (event_child->pending_is_breakpoint == 0)
    return 0;

  if (debug_threads)
    FUNC0 (stderr, "Checking for breakpoint.\n");

  saved_inferior = current_inferior;
  current_inferior = FUNC1 (event_child);

  stop_pc = FUNC2 ();

  /* If the PC has changed since we stopped, then we shouldn't do
     anything.  This happens if, for instance, GDB handled the
     decr_pc_after_break subtraction itself.  */
  if (stop_pc != event_child->pending_stop_pc)
    {
      if (debug_threads)
	FUNC0 (stderr, "Ignoring, PC was changed.\n");

      event_child->pending_is_breakpoint = 0;
      current_inferior = saved_inferior;
      return 0;
    }

  /* If the breakpoint is still there, we will report hitting it.  */
  if ((*the_low_target.breakpoint_at) (stop_pc))
    {
      if (debug_threads)
	FUNC0 (stderr, "Ignoring, breakpoint is still present.\n");
      current_inferior = saved_inferior;
      return 0;
    }

  if (debug_threads)
    FUNC0 (stderr, "Removed breakpoint.\n");

  /* For decr_pc_after_break targets, here is where we perform the
     decrement.  We go immediately from this function to resuming,
     and can not safely call get_stop_pc () again.  */
  if (the_low_target.set_pc != NULL)
    (*the_low_target.set_pc) (stop_pc);

  /* We consumed the pending SIGTRAP.  */
  event_child->pending_is_breakpoint = 0;
  event_child->status_pending_p = 0;
  event_child->status_pending = 0;

  current_inferior = saved_inferior;
  return 1;
}
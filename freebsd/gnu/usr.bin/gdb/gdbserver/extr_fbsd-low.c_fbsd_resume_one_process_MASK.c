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
struct process_info {scalar_t__ stopped; scalar_t__ bp_reinsert; int stepping; int /*<<< orphan*/  lwpid; struct pending_signals* pending_signals; scalar_t__ stop_expected; scalar_t__ status_pending_p; } ;
struct pending_signals {int signal; struct pending_signals* prev; } ;
struct inferior_list_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_pc ) () ;} ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  PT_CONTINUE ; 
 int /*<<< orphan*/  PT_STEP ; 
 int /*<<< orphan*/  FUNC0 (struct process_info*) ; 
 struct thread_info* current_inferior ; 
 scalar_t__ debug_threads ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pending_signals*) ; 
 struct thread_info* FUNC3 (struct process_info*) ; 
 int inferior_pid ; 
 struct pending_signals* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inferior_list_entry*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 () ; 
 TYPE_1__ the_low_target ; 

__attribute__((used)) static void
FUNC9 (struct inferior_list_entry *entry,
			  int step, int signal)
{
  struct process_info *process = (struct process_info *) entry;
  struct thread_info *saved_inferior;

  if (process->stopped == 0)
    return;

  /* If we have pending signals or status, and a new signal, enqueue the
     signal.  Also enqueue the signal if we are waiting to reinsert a
     breakpoint; it will be picked up again below.  */
  if (signal != 0
      && (process->status_pending_p || process->pending_signals != NULL
	  || process->bp_reinsert != 0))
    {
      struct pending_signals *p_sig;
      p_sig = FUNC4 (sizeof (*p_sig));
      p_sig->prev = process->pending_signals;
      p_sig->signal = signal;
      process->pending_signals = p_sig;
    }

  if (process->status_pending_p && !FUNC0 (process))
    return;

  saved_inferior = current_inferior;
  current_inferior = FUNC3 (process);

  if (debug_threads)
    FUNC1 (stderr, "Resuming process %d (%s, signal %d, stop %s)\n", inferior_pid,
	     step ? "step" : "continue", signal,
	     process->stop_expected ? "expected" : "not expected");

  /* This bit needs some thinking about.  If we get a signal that
     we must report while a single-step reinsert is still pending,
     we often end up resuming the thread.  It might be better to
     (ew) allow a stack of pending events; then we could be sure that
     the reinsert happened right away and not lose any signals.

     Making this stack would also shrink the window in which breakpoints are
     uninserted (see comment in fbsd_wait_for_process) but not enough for
     complete correctness, so it won't solve that problem.  It may be
     worthwhile just to solve this one, however.  */
  if (process->bp_reinsert != 0)
    {
      if (debug_threads)
	FUNC1 (stderr, "  pending reinsert at %08lx", (long)process->bp_reinsert);
      if (step == 0)
	FUNC1 (stderr, "BAD - reinserting but not stepping.\n");
      step = 1;

      /* Postpone any pending signal.  It was enqueued above.  */
      signal = 0;
    }

  FUNC0 (process);

  if (debug_threads && the_low_target.get_pc != NULL)
    {
      FUNC1 (stderr, "  ");
      (long) (*the_low_target.get_pc) ();
    }

  /* If we have pending signals, consume one unless we are trying to reinsert
     a breakpoint.  */
  if (process->pending_signals != NULL && process->bp_reinsert == 0)
    {
      struct pending_signals **p_sig;

      p_sig = &process->pending_signals;
      while ((*p_sig)->prev != NULL)
	p_sig = &(*p_sig)->prev;

      signal = (*p_sig)->signal;
      FUNC2 (*p_sig);
      *p_sig = NULL;
    }

  FUNC7 ((struct inferior_list_entry *)
			   FUNC3 (process));
  errno = 0;
  process->stopped = 0;
  process->stepping = step;
  FUNC6 (step ? PT_STEP : PT_CONTINUE, process->lwpid, (PTRACE_ARG3_TYPE) 1, signal);

  current_inferior = saved_inferior;
  if (errno)
    FUNC5 ("ptrace");
}
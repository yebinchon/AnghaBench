#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread_info {int dummy; } ;
struct process_info {int status_pending_p; int status_pending; int stop_expected; int /*<<< orphan*/  tid; scalar_t__ stopped; } ;
struct inferior_list_entry {int id; } ;

/* Variables and functions */
 scalar_t__ SIGSTOP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  all_threads ; 
 struct thread_info* current_inferior ; 
 scalar_t__ debug_threads ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct thread_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7 (struct inferior_list_entry *entry)
{
  struct process_info *process = (struct process_info *) entry;
  struct thread_info *saved_inferior, *thread;
  int wstat, saved_tid;

  if (process->stopped)
    return;

  saved_inferior = current_inferior;
  saved_tid = ((struct inferior_list_entry *) saved_inferior)->id;
  thread = (struct thread_info *) FUNC4 (&all_threads,
						    process->tid);
  wstat = FUNC3 (thread);

  /* If we stopped with a non-SIGSTOP signal, save it for later
     and record the pending SIGSTOP.  If the process exited, just
     return.  */
  if (FUNC0 (wstat)
      && FUNC1 (wstat) != SIGSTOP)
    {
      if (debug_threads)
	FUNC5 (stderr, "Stopped with non-sigstop signal\n");
      process->status_pending_p = 1;
      process->status_pending = wstat;
      process->stop_expected = 1;
    }

  if (FUNC2 (saved_tid))
    current_inferior = saved_inferior;
  else
    {
      if (debug_threads)
	FUNC5 (stderr, "Previously current thread died.\n");

      /* Set a valid thread as current.  */
      FUNC6 (0);
    }
}
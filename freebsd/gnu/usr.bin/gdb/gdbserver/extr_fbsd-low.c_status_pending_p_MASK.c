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
struct process_info {int status_pending_p; int /*<<< orphan*/  head; } ;
struct inferior_list_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct process_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (struct inferior_list_entry *entry, void *dummy)
{
  struct process_info *process = (struct process_info *) entry;

  if (process->status_pending_p)
    if (FUNC0 (process))
      {
	/* This thread was stopped at a breakpoint, and the breakpoint
	   is now gone.  We were told to continue (or step...) all threads,
	   so GDB isn't trying to single-step past this breakpoint.
	   So instead of reporting the old SIGTRAP, pretend we got to
	   the breakpoint just after it was removed instead of just
	   before; resume the process.  */
	FUNC1 (&process->head, 0, 0);
	return 0;
      }

  return process->status_pending_p;
}
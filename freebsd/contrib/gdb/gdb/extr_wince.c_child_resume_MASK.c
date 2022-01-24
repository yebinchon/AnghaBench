#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ContextFlags; } ;
struct TYPE_5__ {TYPE_3__ context; int /*<<< orphan*/  h; } ;
typedef  TYPE_1__ thread_info ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_7__ {int /*<<< orphan*/  dwThreadId; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 int /*<<< orphan*/  DBG_EXCEPTION_NOT_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NSIG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ current_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ last_sig ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (ptid_t ptid, int step, enum target_signal sig)
{
  thread_info *th;
  DWORD continue_status = last_sig > 0 && last_sig < NSIG ?
  DBG_EXCEPTION_NOT_HANDLED : DBG_CONTINUE;
  int pid = FUNC2 (ptid);

  FUNC1 (("gdb: child_resume (pid=%d, step=%d, sig=%d);\n",
	       pid, step, sig));

  /* Get context for currently selected thread */
  th = FUNC6 (current_event.dwThreadId, FALSE);

  if (th->context.ContextFlags)
    {
      FUNC0 (FUNC5 (th->h, &th->context));
      th->context.ContextFlags = 0;
    }

  /* Allow continuing with the same signal that interrupted us.
     Otherwise complain. */
  if (sig && sig != last_sig)
    FUNC4 (gdb_stderr, "Can't send signals to the child.  signal %d\n", sig);

  last_sig = 0;
  FUNC3 (continue_status, pid);
}
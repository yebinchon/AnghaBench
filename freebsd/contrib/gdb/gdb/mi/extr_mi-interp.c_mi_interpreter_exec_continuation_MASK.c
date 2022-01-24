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
struct continuation_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 int /*<<< orphan*/  FUNC0 (void (*) (struct continuation_arg*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  stop_bpstat ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  target_executing ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC7 (struct continuation_arg *arg)
{
  FUNC1 (&stop_bpstat);
  if (!target_executing)
    {
      FUNC3 ("*stopped", raw_stdout);
      FUNC5 (uiout, raw_stdout);
      FUNC3 ("\n", raw_stdout);
      FUNC3 ("(gdb) \n", raw_stdout);
      FUNC4 (raw_stdout);
      FUNC2 (ALL_CLEANUPS);
    }
  else if (FUNC6 ())
    {
      FUNC0 (mi_interpreter_exec_continuation, NULL);
    }
}
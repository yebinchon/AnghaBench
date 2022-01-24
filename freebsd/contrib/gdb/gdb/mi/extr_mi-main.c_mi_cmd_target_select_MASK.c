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
struct cleanup {int dummy; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CLEANUPS ; 
 int MI_CMD_QUIET ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* last_async_command ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_stdout ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,char*) ; 
 int /*<<< orphan*/  xfree ; 

enum mi_cmd_result
FUNC8 (char *args, int from_tty)
{
  char *run;
  struct cleanup *old_cleanups = NULL;

  FUNC7 (&run, "target %s", args);
  old_cleanups = FUNC4 (xfree, run);

  /* target-select is always synchronous.  once the call has returned
     we know that we are connected. */
  /* NOTE: At present all targets that are connected are also
     (implicitly) talking to a halted target.  In the future this may
     change. */
  FUNC2 (run, from_tty);

  FUNC0 (old_cleanups);

  /* Issue the completion message here. */
  if (last_async_command)
    FUNC3 (last_async_command, raw_stdout);
  FUNC3 ("^connected", raw_stdout);
  FUNC5 (uiout, raw_stdout);
  FUNC6 (uiout);
  FUNC3 ("\n", raw_stdout);
  FUNC1 (ALL_CLEANUPS);
  return MI_CMD_QUIET;
}
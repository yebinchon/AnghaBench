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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CW_CYGWIN_PID_TO_WINPID ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SE_DEBUG_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int attach_flag ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ saw_create ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15 (char *args, int from_tty)
{
  BOOL ok;
  DWORD pid;

  if (!args)
    FUNC5 ("process-id to attach");

  if (FUNC11 (SE_DEBUG_NAME, TRUE) < 0)
    {
      FUNC10 ("Warning: Failed to get SE_DEBUG_NAME privilege\n");
      FUNC10 ("This can cause attach to fail on Windows NT/2K/XP\n");
    }

  pid = FUNC12 (args, 0, 0);		/* Windows pid */

  ok = FUNC0 (pid);
  saw_create = 0;

  if (!ok)
    {
      /* Try fall back to Cygwin pid */
      pid = FUNC2 (CW_CYGWIN_PID_TO_WINPID, pid);

      if (pid > 0)
	ok = FUNC0 (pid);

      if (!ok)
	FUNC4 ("Can't attach to process.");
    }

  if (FUNC8 ())
    FUNC1 (FALSE);

  attach_flag = 1;

  if (from_tty)
    {
      char *exec_file = (char *) FUNC7 (0);

      if (exec_file)
	FUNC10 ("Attaching to program `%s', %s\n", exec_file,
			   FUNC13 (FUNC9 (pid)));
      else
	FUNC10 ("Attaching to %s\n",
			   FUNC13 (FUNC9 (pid)));

      FUNC6 (gdb_stdout);
    }

  FUNC3 (pid);
  FUNC14 ();
}
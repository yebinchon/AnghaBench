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
struct TYPE_2__ {int /*<<< orphan*/  dwProcessId; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  child_ops ; 
 TYPE_1__ current_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (char *args, int from_tty)
{
  int detached = 1;

  if (FUNC8 ())
    {
      FUNC4 (NULL, 0);
      FUNC3 (DBG_CONTINUE, -1);
      if (!FUNC0 (current_event.dwProcessId))
	{
	  FUNC5 ("Can't detach process %lu (error %lu)",
		 current_event.dwProcessId, FUNC2 ());
	  detached = 0;
	}
      FUNC1 (FALSE);
    }
  if (detached && from_tty)
    {
      char *exec_file = FUNC7 (0);
      if (exec_file == 0)
	exec_file = "";
      FUNC9 ("Detaching from program: %s, Pid %lu\n", exec_file,
			 current_event.dwProcessId);
      FUNC6 (gdb_stdout);
    }
  inferior_ptid = null_ptid;
  FUNC10 (&child_ops);
}
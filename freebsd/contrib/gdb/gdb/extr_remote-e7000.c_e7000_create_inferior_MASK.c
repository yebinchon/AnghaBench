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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8 (char *execfile, char *args, char **env)
{
  int entry_pt;

  if (args && *args)
    FUNC3 ("Can't pass arguments to remote E7000DEBUG process");

  if (execfile == 0 || exec_bfd == 0)
    FUNC3 ("No executable file specified");

  entry_pt = (int) FUNC1 (exec_bfd);

#ifdef CREATE_INFERIOR_HOOK
  CREATE_INFERIOR_HOOK (0);	/* No process-ID */
#endif

  /* The "process" (board) is already stopped awaiting our commands, and
     the program is already downloaded.  We just set its PC and go.  */

  FUNC2 ();

  /* Tell wait_for_inferior that we've started a new process.  */
  FUNC4 ();

  /* Set up the "saved terminal modes" of the inferior
     based on what modes we are starting it with.  */
  FUNC7 ();

  /* Install inferior's terminal modes.  */
  FUNC6 ();

  /* insert_step_breakpoint ();  FIXME, do we need this?  */
  FUNC5 ((CORE_ADDR) entry_pt, -1, 0);	/* Let 'er rip... */
}
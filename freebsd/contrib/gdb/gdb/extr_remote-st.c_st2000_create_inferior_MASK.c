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
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (char *execfile, char *args, char **env)
{
  int entry_pt;

  if (args && *args)
    FUNC2 ("Can't pass arguments to remote STDEBUG process");

  if (execfile == 0 || exec_bfd == 0)
    FUNC2 ("No executable file specified");

  entry_pt = (int) FUNC0 (exec_bfd);

/* The "process" (board) is already stopped awaiting our commands, and
   the program is already downloaded.  We just set its PC and go.  */

  FUNC1 ();

  /* Tell wait_for_inferior that we've started a new process.  */
  FUNC3 ();

  /* Set up the "saved terminal modes" of the inferior
     based on what modes we are starting it with.  */
  FUNC6 ();

  /* Install inferior's terminal modes.  */
  FUNC5 ();

  /* insert_step_breakpoint ();  FIXME, do we need this?  */
  /* Let 'er rip... */
  FUNC4 ((CORE_ADDR) entry_pt, TARGET_SIGNAL_DEFAULT, 0);
}
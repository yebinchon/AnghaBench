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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * gdbsim_desc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void
FUNC3 (char *args, int from_tty)
{
  if (gdbsim_desc == NULL)
    {

      /* PREVIOUSLY: The user may give a command before the simulator
         is opened. [...] (??? assuming of course one wishes to
         continue to allow commands to be sent to unopened simulators,
         which isn't entirely unreasonable). */

      /* The simulator is a builtin abstraction of a remote target.
         Consistent with that model, access to the simulator, via sim
         commands, is restricted to the period when the channel to the
         simulator is open. */

      FUNC0 ("Not connected to the simulator target");
    }

  FUNC2 (gdbsim_desc, args);

  /* Invalidate the register cache, in case the simulator command does
     something funny. */
  FUNC1 ();
}
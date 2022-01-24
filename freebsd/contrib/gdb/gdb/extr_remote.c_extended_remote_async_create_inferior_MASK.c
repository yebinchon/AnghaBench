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
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ event_loop_p ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  inferior_event_handler ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (char *exec_file, char *args, char **env)
{
  /* Rip out the breakpoints; we'll reinsert them after restarting
     the remote server.  */
  FUNC4 ();

  /* If running asynchronously, register the target file descriptor
     with the event loop. */
  if (event_loop_p && FUNC6 ())
    FUNC5 (inferior_event_handler, 0);

  /* Now restart the remote server.  */
  FUNC1 ();

  /* Now put the breakpoints back in.  This way we're safe if the
     restart function works via a unix fork on the remote side.  */
  FUNC2 ();

  /* Clean up from the last time we were running.  */
  FUNC0 ();

  /* Let the remote process run.  */
  FUNC3 (-1, TARGET_SIGNAL_0, 0);
}
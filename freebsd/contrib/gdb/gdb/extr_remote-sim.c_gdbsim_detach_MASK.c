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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 () ; 
 char* target_shortname ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  if (FUNC2 ())
    FUNC1 ("gdbsim_detach: args \"%s\"\n", args);

  FUNC0 ();		/* calls gdbsim_close to do the real work */
  if (from_tty)
    FUNC1 ("Ending simulator %s debugging\n", target_shortname);
}
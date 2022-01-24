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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ mi_debug_p ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC5 (char const*) ; 

void
FUNC6 (const char *cmd, int args_p, const char *args)
{
  if (cmd != 0)
    {
      struct cleanup *old_cleanups;
      char *run;
      if (args_p)
	FUNC4 (&run, "%s %s", cmd, args);
      else
	run = FUNC5 (cmd);
      if (mi_debug_p)
	/* FIXME: gdb_???? */
	FUNC2 (gdb_stdout, "cli=%s run=%s\n",
			    cmd, run);
      old_cleanups = FUNC3 (xfree, run);
      FUNC1 ( /*ui */ run, 0 /*from_tty */ );
      FUNC0 (old_cleanups);
      return;
    }
}
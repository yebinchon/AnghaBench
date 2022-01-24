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
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (const char *cmd, const char *args)
{
  if (cmd != 0)
    {
      struct cleanup *old_cleanups;
      char *run;
      if (args != NULL)
	FUNC3 (&run, "%s %s", cmd, args);
      else
	run = FUNC4 (cmd);
      old_cleanups = FUNC2 (xfree, run);
      FUNC1 ( /*ui */ run, 0 /*from_tty */ );
      FUNC0 (old_cleanups);
      return;
    }
}
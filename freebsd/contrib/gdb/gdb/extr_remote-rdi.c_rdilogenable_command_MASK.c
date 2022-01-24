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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int log_enable ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void 
FUNC4 (char *args, int from_tty)
{
  if (!args || FUNC3 (args) == 0)
    {
      FUNC1 ("rdi log is %s\n", log_enable ? "enabled" : "disabled");
      return;
    }

  if (!FUNC2 (args, "1") ||
      !FUNC2 (args, "y") ||
      !FUNC2 (args, "yes") ||
      !FUNC2 (args, "on") ||
      !FUNC2 (args, "t") ||
      !FUNC2 (args, "true"))
    FUNC0 (log_enable = 1);
  else if (!FUNC2 (args, "0") ||
	   !FUNC2 (args, "n") ||
	   !FUNC2 (args, "no") ||
	   !FUNC2 (args, "off") ||
	   !FUNC2 (args, "f") ||
	   !FUNC2 (args, "false"))
    FUNC0 (log_enable = 0);
  else
    FUNC1 ("rdilogenable: unrecognized argument '%s'\n"
		     "              try y or n\n", args);
}
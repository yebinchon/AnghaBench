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
 int OBJF_SHARED ; 
 int OBJF_USERLOADED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

void
FUNC8 (char *args, int from_tty)
{
  int n;
  FUNC1 ();

  if (args == NULL)
    FUNC2 ("dll-symbols requires a file name");

  n = FUNC7 (args);
  if (n > 4 && FUNC4 (args + n - 4, ".dll") != 0)
    {
      char *newargs = (char *) FUNC0 (n + 4 + 1);
      FUNC6 (newargs, args);
      FUNC5 (newargs, ".dll");
      args = newargs;
    }

  FUNC3 (args, from_tty, NULL, 0, OBJF_SHARED | OBJF_USERLOADED);
}
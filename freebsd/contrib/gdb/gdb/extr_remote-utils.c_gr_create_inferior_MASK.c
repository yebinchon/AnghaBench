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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9 (char *execfile, char *args, char **env)
{
  int entry_pt;

  if (args && *args)
    FUNC1 ("Can't pass arguments to remote process.");

  if (execfile == 0 || exec_bfd == 0)
    FUNC1 ("No executable file specified");

  entry_pt = (int) FUNC0 (exec_bfd);
  FUNC8 ();

  FUNC4 ();
  FUNC3 ();

  FUNC5 ();
  FUNC2 ();

  FUNC6 ();	/* Needed to get correct instruction in cache */
  FUNC7 (entry_pt, -1, 0);
}
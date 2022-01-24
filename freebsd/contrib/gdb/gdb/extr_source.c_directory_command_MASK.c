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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * last_source_visited ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  source_path ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (char *dirname, int from_tty)
{
  FUNC0 ();
  /* FIXME, this goes to "delete dir"... */
  if (dirname == 0)
    {
      if (from_tty && FUNC4 ("Reinitialize source path to empty? "))
	{
	  FUNC6 (source_path);
	  FUNC2 ();
	}
    }
  else
    {
      FUNC3 (dirname, &source_path);
      last_source_visited = NULL;
    }
  if (from_tty)
    FUNC5 ((char *) 0, from_tty);
  FUNC1 ();
}
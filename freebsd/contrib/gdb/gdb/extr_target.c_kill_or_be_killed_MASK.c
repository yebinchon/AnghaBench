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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (int from_tty)
{
  if (target_has_execution)
    {
      FUNC1 ("You are already running a program:\n");
      FUNC3 ();
      if (FUNC2 ("Kill it? "))
	{
	  FUNC4 ();
	  if (target_has_execution)
	    FUNC0 ("Killing the program did not help.");
	  return;
	}
      else
	{
	  FUNC0 ("Program not killed.");
	}
    }
  FUNC5 ();
}
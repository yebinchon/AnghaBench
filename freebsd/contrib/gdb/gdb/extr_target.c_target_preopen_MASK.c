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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5 (int from_tty)
{
  FUNC0 ();

  if (target_has_execution)
    {
      if (!from_tty
          || FUNC3 ("A program is being debugged already.  Kill it? "))
	FUNC4 ();
      else
	FUNC1 ("Program not killed.");
    }

  /* Calling target_kill may remove the target from the stack.  But if
     it doesn't (which seems like a win for UDI), remove it now.  */

  if (target_has_execution)
    FUNC2 ();
}
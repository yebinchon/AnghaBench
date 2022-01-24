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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int general_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC5 (int currthread)
{
  general_thread = currthread;

  /* If this is a new thread, add it to GDB's thread list.
     If we leave it up to WFI to do this, bad things will happen.  */
  if (!FUNC1 (FUNC2 (currthread)))
    {
      FUNC0 (FUNC2 (currthread));
      FUNC4 (uiout, "[New ");
      FUNC4 (uiout, FUNC3 (FUNC2 (currthread)));
      FUNC4 (uiout, "]\n");
    }
}
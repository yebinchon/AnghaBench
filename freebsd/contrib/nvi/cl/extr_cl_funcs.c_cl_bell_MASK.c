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
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  O_FLASH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SC_EX ; 
 int SC_SCR_EX ; 
 int SC_SCR_EXWROTE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC5(SCR *sp)
{
	if (FUNC0(sp, SC_EX | SC_SCR_EXWROTE | SC_SCR_EX))
		(void)FUNC4(STDOUT_FILENO, "\07", 1);		/* \a */
	else {
		/*
		 * Vi has an edit option which determines if the terminal
		 * should be beeped or the screen flashed.
		 */
		if (FUNC1(sp, O_FLASH))
			(void)FUNC3();
		else
			(void)FUNC2();
	}
	return (0);
}
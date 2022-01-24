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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int OldvcV ; 
 scalar_t__ T_CanCEOL ; 
 int /*<<< orphan*/  TermH ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

void
FUNC4(void)
{				/* Make sure all lines are *really* blank */
    int i;

    if (T_CanCEOL) {
	/*
	 * Clear the lines from the bottom up so that if we try moving
	 * the cursor down by writing the character that is at the end
	 * of the screen line, we won't rewrite a character that shouldn't
	 * be there.
	 */
	for (i = OldvcV; i >= 0; i--) {	/* for each line on the screen */
	    FUNC2(i);
	    FUNC1(0);
	    FUNC0(TermH);
	}
    }
    else {
	FUNC2(OldvcV);	/* go to last line */
	(void) FUNC3('\r');	/* go to BOL */
	(void) FUNC3('\n');	/* go to new line */
    }
}
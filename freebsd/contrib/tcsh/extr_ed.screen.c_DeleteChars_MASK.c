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
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_CanDel ; 
 int /*<<< orphan*/  T_DC ; 
 int /*<<< orphan*/  T_dc ; 
 int /*<<< orphan*/  T_dm ; 
 int /*<<< orphan*/  T_ed ; 
 int TermH ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 

void
FUNC7(int num)		/* deletes <num> characters */
{
    if (num <= 0)
	return;

    if (!T_CanDel) {
#ifdef DEBUG_EDIT
	xprintf(CGETS(7, 16, "ERROR: cannot delete\r\n"));
#endif /* DEBUG_EDIT */
	FUNC3();
	return;
    }

    if (num > TermH) {
#ifdef DEBUG_SCREEN
	xprintf(CGETS(7, 17, "DeleteChars: num is riduculous: %d\r\n"), num);
	flush();
#endif /* DEBUG_SCREEN */
	return;
    }

    if (FUNC1(T_DC))		/* if I have multiple delete */
	if ((num > 1) || !FUNC1(T_dc)) {	/* if dc would be more expen. */
	    (void) FUNC5(FUNC4(FUNC2(T_DC), num, num), num, PUTPURE);
	    return;
	}

    if (FUNC1(T_dm))		/* if I have delete mode */
	(void) FUNC5(FUNC2(T_dm), 1, PUTPURE);

    if (FUNC1(T_dc))		/* else do one at a time */
	while (num--)
	    (void) FUNC5(FUNC2(T_dc), 1, PUTPURE);

    if (FUNC1(T_ed))		/* if I have delete mode */
	(void) FUNC5(FUNC2(T_ed), 1, PUTPURE);
}
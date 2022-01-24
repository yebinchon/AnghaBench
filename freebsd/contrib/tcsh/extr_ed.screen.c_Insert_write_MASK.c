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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_CanIns ; 
 int /*<<< orphan*/  T_IC ; 
 int /*<<< orphan*/  T_ei ; 
 int /*<<< orphan*/  T_ic ; 
 int /*<<< orphan*/  T_im ; 
 int /*<<< orphan*/  T_ip ; 
 int TermH ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 

void
FUNC8(Char *cp, int num)
{
    if (num <= 0)
	return;
    if (!T_CanIns) {
#ifdef DEBUG_EDIT
	xprintf(CGETS(7, 18, "ERROR: cannot insert\r\n"));
#endif /* DEBUG_EDIT */
	FUNC3();
	return;
    }

    if (num > TermH) {
#ifdef DEBUG_SCREEN
	xprintf(CGETS(7, 19, "StartInsert: num is riduculous: %d\r\n"), num);
	flush();
#endif /* DEBUG_SCREEN */
	return;
    }

    if (FUNC1(T_IC))		/* if I have multiple insert */
	if ((num > 1) || !FUNC1(T_ic)) {	/* if ic would be more expen. */
	    (void) FUNC6(FUNC5(FUNC2(T_IC), num, num), num, PUTPURE);
	    FUNC4(cp, num);	/* this updates CursorH/V */
	    return;
	}

    if (FUNC1(T_im) && FUNC1(T_ei)) { /* if I have insert mode */
	(void) FUNC6(FUNC2(T_im), 1, PUTPURE);

	FUNC4(cp, num);	/* this updates CursorH/V */

	if (FUNC1(T_ip))	/* have to make num chars insert */
	    (void) FUNC6(FUNC2(T_ip), 1, PUTPURE);

	(void) FUNC6(FUNC2(T_ei), 1, PUTPURE);
	return;
    }

    do {
	if (FUNC1(T_ic))	/* have to make num chars insert */
	    (void) FUNC6(FUNC2(T_ic), 1, PUTPURE);	/* insert a char */

	FUNC4(cp++, 1);	/* this updates CursorH/V */

	if (FUNC1(T_ip))	/* have to make num chars insert */
	    (void) FUNC6(FUNC2(T_ip), 1, PUTPURE);/* pad the inserted char */

    } while (--num);

}
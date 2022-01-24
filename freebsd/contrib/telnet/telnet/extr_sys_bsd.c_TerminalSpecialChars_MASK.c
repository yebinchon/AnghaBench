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
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 int /*<<< orphan*/  globalmode ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ kludgelinemode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int termEofChar ; 
 int termEraseChar ; 
 int termFlushChar ; 
 int termIntChar ; 
 int termKillChar ; 
 int termQuitChar ; 
 int termSuspChar ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int c)
{
    if (c == termIntChar) {
	FUNC1();
	return 0;
    } else if (c == termQuitChar) {
#ifdef	KLUDGELINEMODE
	if (kludgelinemode)
	    sendbrk();
	else
#endif
	    FUNC3();
	return 0;
    } else if (c == termEofChar) {
	if (FUNC2(TELOPT_LINEMODE)) {
	    FUNC5();
	    return 0;
	}
	return 1;
    } else if (c == termSuspChar) {
	FUNC6();
	return(0);
    } else if (c == termFlushChar) {
	FUNC7();		/* Transmit Abort Output */
	return 0;
    } else if (!FUNC0(globalmode)) {
	if (c == termKillChar) {
	    FUNC9();
	    return 0;
	} else if (c == termEraseChar) {
	    FUNC8();		/* Transmit Erase Character */
	    return 0;
	}
    }
    return 1;
}
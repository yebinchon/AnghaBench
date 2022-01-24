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
typedef  int Char ;

/* Variables and functions */
 int ATTRIBUTES ; 
 int BOLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int STANDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_md ; 
 int /*<<< orphan*/  T_me ; 
 int /*<<< orphan*/  T_se ; 
 int /*<<< orphan*/  T_so ; 
 int /*<<< orphan*/  T_ue ; 
 int /*<<< orphan*/  T_us ; 
 int UNDER ; 
 int cur_atr ; 
 scalar_t__ me_all ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC3(Char atr)
{
    atr &= ATTRIBUTES;
    if (atr != cur_atr) {
	if (me_all && FUNC0(T_me)) {
	    if (((cur_atr & BOLD) && !(atr & BOLD)) ||
		((cur_atr & UNDER) && !(atr & UNDER)) ||
		((cur_atr & STANDOUT) && !(atr & STANDOUT))) {
		(void) FUNC2(FUNC1(T_me), 1, PUTPURE);
		cur_atr = 0;
	    }
	}
	if ((atr & BOLD) != (cur_atr & BOLD)) {
	    if (atr & BOLD) {
		if (FUNC0(T_md) && FUNC0(T_me)) {
		    (void) FUNC2(FUNC1(T_md), 1, PUTPURE);
		    cur_atr |= BOLD;
		}
	    }
	    else {
		if (FUNC0(T_md) && FUNC0(T_me)) {
		    (void) FUNC2(FUNC1(T_me), 1, PUTPURE);
		    if ((cur_atr & STANDOUT) && FUNC0(T_se)) {
			(void) FUNC2(FUNC1(T_se), 1, PUTPURE);
			cur_atr &= ~STANDOUT;
		    }
		    if ((cur_atr & UNDER) && FUNC0(T_ue)) {
			(void) FUNC2(FUNC1(T_ue), 1, PUTPURE);
			cur_atr &= ~UNDER;
		    }
		    cur_atr &= ~BOLD;
		}
	    }
	}
	if ((atr & STANDOUT) != (cur_atr & STANDOUT)) {
	    if (atr & STANDOUT) {
		if (FUNC0(T_so) && FUNC0(T_se)) {
		    (void) FUNC2(FUNC1(T_so), 1, PUTPURE);
		    cur_atr |= STANDOUT;
		}
	    }
	    else {
		if (FUNC0(T_se)) {
		    (void) FUNC2(FUNC1(T_se), 1, PUTPURE);
		    cur_atr &= ~STANDOUT;
		}
	    }
	}
	if ((atr & UNDER) != (cur_atr & UNDER)) {
	    if (atr & UNDER) {
		if (FUNC0(T_us) && FUNC0(T_ue)) {
		    (void) FUNC2(FUNC1(T_us), 1, PUTPURE);
		    cur_atr |= UNDER;
		}
	    }
	    else {
		if (FUNC0(T_ue)) {
		    (void) FUNC2(FUNC1(T_ue), 1, PUTPURE);
		    cur_atr &= ~UNDER;
		}
	    }
	}
    }
}
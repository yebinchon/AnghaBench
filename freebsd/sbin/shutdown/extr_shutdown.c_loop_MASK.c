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
typedef  scalar_t__ u_int ;
struct interval {scalar_t__ timeleft; int timetowait; } ;

/* Variables and functions */
 scalar_t__ NOLOG_TIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ offset ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct interval* tlist ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct interval *tp;
	u_int sltime;
	int logged;

	if (offset <= NOLOG_TIME) {
		logged = 1;
		FUNC1();
	}
	else
		logged = 0;
	tp = tlist;
	if (tp->timeleft < offset)
		(void)FUNC2((u_int)(offset - tp->timeleft));
	else {
		while (tp->timeleft && offset < tp->timeleft)
			++tp;
		/*
		 * Warn now, if going to sleep more than a fifth of
		 * the next wait time.
		 */
		if ((sltime = offset - tp->timeleft)) {
			if (sltime > (u_int)(tp->timetowait / 5))
				FUNC3(offset);
			(void)FUNC2(sltime);
		}
	}
	for (;; ++tp) {
		FUNC3(tp->timeleft);
		if (!logged && tp->timeleft <= NOLOG_TIME) {
			logged = 1;
			FUNC1();
		}
		(void)FUNC2((u_int)tp->timetowait);
		if (!tp->timeleft)
			break;
	}
	FUNC0();
}
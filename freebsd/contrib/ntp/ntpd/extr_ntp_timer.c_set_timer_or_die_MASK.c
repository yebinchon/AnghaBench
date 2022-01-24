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
typedef  int /*<<< orphan*/  intervaltimer ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  itimer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_id ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(
	const intervaltimer *	ptimer
	)
{
	const char *	setfunc;
	int		rc;

# ifdef HAVE_TIMER_CREATE
	setfunc = "timer_settime";
	rc = timer_settime(timer_id, 0, &itimer, NULL);
# else
	setfunc = "setitimer";
	rc = FUNC2(ITIMER_REAL, &itimer, NULL);
# endif
	if (-1 == rc) {
		FUNC1(LOG_ERR, "interval timer %s failed, %m",
			setfunc);
		FUNC0(1);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_2__ it_interval; } ;
struct TYPE_8__ {struct TYPE_8__* ev_link; } ;
typedef  TYPE_3__ SM_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SIGALRM ; 
 TYPE_3__* SmEventQueue ; 
 TYPE_3__* SmFreeEventList ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6()
{
	register SM_EVENT *ev;
#if SM_CONF_SETITIMER
	struct itimerval clr;
#endif /* SM_CONF_SETITIMER */
	int wasblocked;

	/* nothing will be left in event queue, no need for an alarm */
#if SM_CONF_SETITIMER
	clr.it_interval.tv_sec = 0;
	clr.it_interval.tv_usec = 0;
	clr.it_value.tv_sec = 0;
	clr.it_value.tv_usec = 0;
	(void) setitimer(ITIMER_REAL, &clr, NULL);
#else /* SM_CONF_SETITIMER */
	(void) FUNC2(0);
#endif /* SM_CONF_SETITIMER */

	if (SmEventQueue == NULL)
		return;

	wasblocked = FUNC4(SIGALRM);

	/* find the end of the EventQueue */
	for (ev = SmEventQueue; ev->ev_link != NULL; ev = ev->ev_link)
		continue;

	FUNC0();
	ev->ev_link = SmFreeEventList;
	SmFreeEventList = SmEventQueue;
	SmEventQueue = NULL;
	FUNC1();

	/* restore clocks and pick up anything spare */
	if (wasblocked == 0)
		(void) FUNC5(SIGALRM);
}
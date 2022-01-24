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
 int ADJINTERVAL ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 scalar_t__ MAX_UNSYNC ; 
 int NOTICE_INTERVAL ; 
 scalar_t__ NO_SYNC ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ last_sync ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void (*) (int)) ; 
 scalar_t__ sync_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int ticks ; 

__attribute__((used)) static void
FUNC4(
     int signum
     )
{
	static unsigned long last_notice = 0;

#if !defined(HAVE_SIGACTION) && !defined(HAVE_SIGVEC)
	(void)FUNC2(SIGALRM, tick);
#endif

	FUNC1();

	ticks += 1<<ADJINTERVAL;

	if ((ticks - last_sync) > MAX_UNSYNC)
	{
		/*
		 * not getting time for a while
		 */
		if (sync_state == SYNC)
		{
			/*
			 * completely lost information
			 */
			sync_state = NO_SYNC;
			FUNC3(LOG_INFO, "DCF77 reception lost (timeout)");
			last_notice = ticks;
		}
		else
		    /*
		     * in NO_SYNC state - look whether its time to speak up again
		     */
		    if ((ticks - last_notice) > NOTICE_INTERVAL)
		    {
			    FUNC3(LOG_NOTICE, "still not synchronized to DCF77 - check receiver/signal");
			    last_notice = ticks;
		    }
	}

#ifndef ITIMER_REAL
	(void) FUNC0(1<<ADJINTERVAL);
#endif
}
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
struct timespec {int tv_sec; int tv_nsec; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int BILLION ; 
 int EINTR ; 
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC1 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int KEVNT_TIMEOUT ; 
 int MAXSLEEP ; 
 int MILLION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int,struct kevent*,int,struct kevent*,int,struct timespec*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int
FUNC7(struct timespec *delay, struct timespec *remain)
{
	struct kevent ktimer;
	struct kevent kresult;
	int rtc, kq, kerrno;
	int tmo;

	FUNC0((kq = FUNC5()) != -1, "kqueue: %s", FUNC6(errno));

	tmo = KEVNT_TIMEOUT;

	/*
	 * If we expect the KEVNT_TIMEOUT to fire, and we're running
	 * under QEMU, make sure the delay is long enough to account
	 * for the effects of PR kern/43997 !
	 */
	if (FUNC3() &&
	    tmo/1000 < delay->tv_sec && tmo/500 > delay->tv_sec)
		delay->tv_sec = MAXSLEEP;

	FUNC1(&ktimer, 1, EVFILT_TIMER, EV_ADD, 0, tmo, 0);

	rtc = FUNC4(kq, &ktimer, 1, &kresult, 1, delay);
	kerrno = errno;

	(void)FUNC2(kq);

	if (rtc == -1) {
		FUNC0(kerrno == EINTR, "kevent: %s",
		    FUNC6(kerrno));
		return 0;
	}

	if (delay->tv_sec * BILLION + delay->tv_nsec > tmo * MILLION)
		FUNC0(rtc > 0,
		    "kevent: KEVNT_TIMEOUT did not cause EVFILT_TIMER event");

	return 0;
}
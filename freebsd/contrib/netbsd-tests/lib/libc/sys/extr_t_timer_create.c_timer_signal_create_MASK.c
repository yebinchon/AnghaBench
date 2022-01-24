#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_3__ {scalar_t__* sival_ptr; } ;
struct sigevent {TYPE_2__ it_value; int /*<<< orphan*/  sigev_notify; TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;
struct sigaction {TYPE_2__ it_value; int /*<<< orphan*/  sigev_notify; TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;
struct itimerspec {TYPE_2__ it_value; int /*<<< orphan*/  sigev_notify; TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int fail ; 
 int /*<<< orphan*/  FUNC2 (struct sigevent*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ t ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct sigevent*,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_signal_handler ; 

__attribute__((used)) static void
FUNC11(clockid_t cid, bool expire)
{
	struct itimerspec tim;
	struct sigaction act;
	struct sigevent evt;
	sigset_t set;

	t = 0;
	fail = true;

	(void)FUNC2(&evt, 0, sizeof(struct sigevent));
	(void)FUNC2(&act, 0, sizeof(struct sigaction));
	(void)FUNC2(&tim, 0, sizeof(struct itimerspec));

	/*
	 * Set handler.
	 */
	act.sa_flags = SA_SIGINFO;
	act.sa_sigaction = timer_signal_handler;

	FUNC0(FUNC5(&set) == 0);
	FUNC0(FUNC5(&act.sa_mask) == 0);

	/*
	 * Block SIGALRM while configuring the timer.
	 */
	FUNC0(FUNC3(SIGALRM, &act, NULL) == 0);
	FUNC0(FUNC4(&set, SIGALRM) == 0);
	FUNC0(FUNC6(SIG_SETMASK, &set, NULL) == 0);

	/*
	 * Create the timer (SIGEV_SIGNAL).
	 */
	evt.sigev_signo = SIGALRM;
	evt.sigev_value.sival_ptr = &t;
	evt.sigev_notify = SIGEV_SIGNAL;

	FUNC0(FUNC8(cid, &evt, &t) == 0);

	/*
	 * Start the timer. After this, unblock the signal.
	 */
	tim.it_value.tv_sec = expire ? 5 : 1;
	tim.it_value.tv_nsec = 0;

	FUNC0(FUNC10(t, 0, &tim, NULL) == 0);

	(void)FUNC6(SIG_UNBLOCK, &set, NULL);
	(void)FUNC7(2);

	if (expire) {
		if (!fail)
			FUNC1("timer fired too soon");
	} else {
		if (fail)
			FUNC1("timer failed to fire");
	}

	FUNC0(FUNC9(t) == 0);
}
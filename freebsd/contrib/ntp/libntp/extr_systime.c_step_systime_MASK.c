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
typedef  int time_t ;
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ allow_panic ; 
 int FUNC4 () ; 
 scalar_t__ enable_panic_check ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*) ; 
 int lamport_violated ; 
 struct timeval FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 double sys_residual ; 
 int /*<<< orphan*/  FUNC11 (struct timespec) ; 
 int /*<<< orphan*/  FUNC12 (struct timeval,struct timeval) ; 

int
FUNC13(
	double step
	)
{
	time_t pivot; /* for ntp era unfolding */
	struct timeval timetv, tvlast;
	struct timespec timets;
	l_fp fp_ofs, fp_sys; /* offset and target system time in FP */

	/*
	 * Get pivot time for NTP era unfolding. Since we don't step
	 * very often, we can afford to do the whole calculation from
	 * scratch. And we're not in the time-critical path yet.
	 */
#if SIZEOF_TIME_T > 4
	pivot = basedate_get_eracenter();
#else
	/* This makes sure the resulting time stamp is on or after
	 * 1969-12-31/23:59:59 UTC and gives us additional two years,
	 * from the change of NTP era in 2036 to the UNIX rollover in
	 * 2038. (Minus one second, but that won't hurt.) We *really*
	 * need a longer 'time_t' after that!  Or a different baseline,
	 * but that would cause other serious trouble, too.
	 */
	pivot = 0x7FFFFFFF;
#endif

	/* get the complete jump distance as l_fp */
	FUNC0(sys_residual, &fp_sys);
	FUNC0(step,         &fp_ofs);
	FUNC2(&fp_ofs, &fp_sys);

	/* ---> time-critical path starts ---> */

	/* get the current time as l_fp (without fuzz) and as struct timeval */
	FUNC5(&timets);
	fp_sys = FUNC11(timets);
	tvlast.tv_sec = timets.tv_sec;
	tvlast.tv_usec = (timets.tv_nsec + 500) / 1000;

	/* get the target time as l_fp */
	FUNC2(&fp_sys, &fp_ofs);

	/* unfold the new system time */
	timetv = FUNC6(fp_sys, &pivot);

	/* now set new system time */
	if (FUNC8(&timetv, NULL) != 0) {
		FUNC7(LOG_ERR, "step-systime: %m");
		if (enable_panic_check && allow_panic) {
			FUNC7(LOG_ERR, "step_systime: allow_panic is TRUE!");
		}
		return FALSE;
	}

	/* <--- time-critical path ended with 'ntp_set_tod()' <--- */

	sys_residual = 0;
	lamport_violated = (step < 0);
	if (&step_callback)
		FUNC9)();

#ifdef NEED_HPUX_ADJTIME
	/*
	 * CHECKME: is this correct when called by ntpdate?????
	 */
	_clear_adjtime();
#endif

	FUNC12(timetv, tvlast);
	if (enable_panic_check && allow_panic) {
		FUNC7(LOG_ERR, "step_systime: allow_panic is TRUE!");
		FUNC1(!allow_panic);
	}
	return TRUE;
}
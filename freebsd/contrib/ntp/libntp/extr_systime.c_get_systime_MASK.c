#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_14__ {scalar_t__ l_i; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (double,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FALSE ; 
 int FRAC ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct timespec FUNC12 (struct timespec,int) ; 
 scalar_t__ FUNC13 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct timespec*) ; 
 int lamport_violated ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC18 () ; 
 struct timespec FUNC19 (struct timespec,struct timespec) ; 
 int sys_fuzz ; 
 int sys_fuzz_nsec ; 
 int /*<<< orphan*/  sys_lamport ; 
 int /*<<< orphan*/  sys_tsrounding ; 
 int /*<<< orphan*/  systime_init_done ; 
 TYPE_1__ FUNC20 (struct timespec) ; 

void
FUNC21(
	l_fp *now		/* system time */
	)
{
        static struct timespec  ts_last;        /* last sampled os time */
	static struct timespec	ts_prev;	/* prior os time */
	static l_fp		lfp_prev;	/* prior result */
	struct timespec ts;	/* seconds and nanoseconds */
	struct timespec ts_min;	/* earliest permissible */
	struct timespec ts_lam;	/* lamport fictional increment */
	double	dfuzz;
	l_fp	result;
	l_fp	lfpfuzz;
	l_fp	lfpdelta;

	FUNC15(&ts);
	FUNC0(systime_init_done);
	FUNC3();

        /* First check if here was a Lamport violation, that is, two
         * successive calls to 'get_ostime()' resulted in negative
         * time difference. Use a few milliseconds of permissible
         * tolerance -- being too sharp can hurt here. (This is intented
         * for the Win32 target, where the HPC interpolation might
         * introduce small steps backward. It should not be an issue on
         * systems where get_ostime() results in a true syscall.)
         */
        if (FUNC13(FUNC12(ts, 50000000), ts_last) < 0) {
                lamport_violated = 1;
                sys_lamport++;
	}
        ts_last = ts;

	/*
	 * After default_get_precision() has set a nonzero sys_fuzz,
	 * ensure every reading of the OS clock advances by at least
	 * sys_fuzz over the prior reading, thereby assuring each
	 * fuzzed result is strictly later than the prior.  Limit the
	 * necessary fiction to 1 second.
	 */
	if (!FUNC11()) {
		ts_min = FUNC12(ts_prev, sys_fuzz_nsec);
		if (FUNC13(ts, ts_min) < 0) {
			ts_lam = FUNC19(ts_min, ts);
			if (ts_lam.tv_sec > 0 && !lamport_violated) {
				FUNC17(LOG_ERR,
					"get_systime Lamport advance exceeds one second (%.9f)",
					ts_lam.tv_sec +
					    1e-9 * ts_lam.tv_nsec);
				FUNC14(1);
			}
			if (!lamport_violated)
				ts = ts_min;
		}
		ts_prev = ts;
	}

	/* convert from timespec to l_fp fixed-point */
	result = FUNC20(ts);

	/*
	 * Add in the fuzz. 'ntp_random()' returns [0..2**31-1] so we
	 * must scale up the result by 2.0 to cover the full fractional
	 * range.
	 */
	dfuzz = FUNC18() * 2. / FRAC * sys_fuzz;
	FUNC2(dfuzz, &lfpfuzz);
	FUNC5(&result, &lfpfuzz);

	/*
	 * Ensure result is strictly greater than prior result (ignoring
	 * sys_residual's effect for now) once sys_fuzz has been
	 * determined.
	 *
	 * [Bug 3450] Rounding errors and time slew can lead to a
	 * violation of the expected postcondition. This is bound to
	 * happen from time to time (depending on state of the random
	 * generator, the current slew and the closeness of system time
	 * stamps drawn) and does not warrant a syslog entry. Instead it
	 * makes much more sense to ensure the postcondition and hop
	 * along silently.
	 */
	if (!FUNC11()) {
		if (   !FUNC7(&lfp_prev)
		    && !lamport_violated
		    && (sys_fuzz > 0.0)
		   ) {
			lfpdelta = result;
			FUNC9(&lfpdelta, &lfp_prev);
			FUNC10(&lfpdelta, 1);
			if (lfpdelta.l_i < 0)
			{
				FUNC8(&lfpdelta);
				FUNC1(1, ("get_systime: postcond failed by %s secs, fixed\n",
					    FUNC16(&lfpdelta, 9)));
				result = lfp_prev;
				FUNC6(&result, 1);
				sys_tsrounding++;
			}
		}
		lfp_prev = result;
		if (lamport_violated) 
			lamport_violated = FALSE;
	}
	FUNC4();
	*now = result;
}
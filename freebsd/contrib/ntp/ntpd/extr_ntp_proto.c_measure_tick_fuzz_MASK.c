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
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAXLOOPS ; 
 double MAXSTEP ; 
 int MINCHANGES ; 
 int /*<<< orphan*/  MINSTEP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (long,long) ; 
 double FUNC7 (double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (double) ; 

double
FUNC10(void)
{
	l_fp	minstep;	/* MINSTEP as l_fp */
	l_fp	val;		/* current seconds fraction */
	l_fp	last;		/* last seconds fraction */
	l_fp	ldiff;		/* val - last */
	double	tick;		/* computed tick value */
	double	diff;
	long	repeats;
	long	max_repeats;
	int	changes;
	int	i;		/* log2 precision */

	tick = MAXSTEP;
	max_repeats = 0;
	repeats = 0;
	changes = 0;
	FUNC0(MINSTEP, &minstep);
	FUNC5(&last);
	for (i = 0; i < MAXLOOPS && changes < MINCHANGES; i++) {
		FUNC5(&val);
		ldiff = val;
		FUNC3(&ldiff, &last);
		last = val;
		if (FUNC2(&ldiff, &minstep)) {
			max_repeats = FUNC6(repeats, max_repeats);
			repeats = 0;
			changes++;
			FUNC1(&ldiff, diff);
			tick = FUNC7(diff, tick);
		} else {
			repeats++;
		}
	}
	if (changes < MINCHANGES) {
		FUNC8(LOG_ERR, "Fatal error: precision could not be measured (MINSTEP too large?)");
		FUNC4(1);
	}

	if (0 == max_repeats) {
		FUNC9(tick);
	} else {
		FUNC9(tick / max_repeats);
	}

	return tick;
}
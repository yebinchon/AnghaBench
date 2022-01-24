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
typedef  int /*<<< orphan*/  time_t ;
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int FREQ_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long,long,long) ; 
 long MAX_DRIFT ; 
 long FUNC1 (long,long) ; 
 long TIMECONSTANT ; 
 long USECSCALE ; 
 long accum_drift ; 
 int adjustments ; 
 long clock_adjust ; 
 void* FUNC2 (int) ; 
 scalar_t__ max_adj_offset_usec ; 
 scalar_t__ no_set ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int skip_adjust ; 
 int /*<<< orphan*/  FUNC5 (char const*,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	     struct timeval *offset,
	     const char *drift_file,
	     time_t reftime
	     )
{
	struct timeval toffset;
	register long usecoffset;
	int tmp;

	if (no_set)
	    return;

	if (skip_adjust)
	{
		skip_adjust = 0;
		return;
	}

	toffset = *offset;
	toffset.tv_sec  = FUNC2(toffset.tv_sec);
	toffset.tv_usec = FUNC2(toffset.tv_usec);
	if (toffset.tv_sec ||
	    (!toffset.tv_sec && toffset.tv_usec > max_adj_offset_usec))
	{
		/*
		 * hopeless - set the clock - and clear the timing
		 */
		FUNC4(offset);
		clock_adjust = 0;
		skip_adjust  = 1;
		return;
	}

	usecoffset   = offset->tv_sec * 1000000 + offset->tv_usec;

	clock_adjust = FUNC1(usecoffset, TIMECONSTANT);	/* adjustment to make for next period */

	tmp = 0;
	while (adjustments > (1 << tmp))
	    tmp++;
	adjustments = 0;
	if (tmp > FREQ_WEIGHT)
	    tmp = FREQ_WEIGHT;

	accum_drift  += FUNC1(usecoffset << USECSCALE, TIMECONSTANT+TIMECONSTANT+FREQ_WEIGHT-tmp);

	if (accum_drift > MAX_DRIFT)		/* clamp into interval */
	    accum_drift = MAX_DRIFT;
	else
	    if (accum_drift < -MAX_DRIFT)
		accum_drift = -MAX_DRIFT;

	FUNC5(drift_file, usecoffset, reftime);
	FUNC0("clock_adjust: %s, clock_adjust %ld, drift_comp %ld(%ld) ",
		FUNC3(offset),(long int) FUNC1(clock_adjust, USECSCALE),
		(long int)FUNC1(accum_drift, USECSCALE), (long int)accum_drift);
}
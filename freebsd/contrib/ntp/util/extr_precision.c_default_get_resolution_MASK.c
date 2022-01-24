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
struct timezone {int dummy; } ;
struct timeval {long tv_usec; } ;

/* Variables and functions */
 int DEFAULT_SYS_PRECISION ; 
 scalar_t__ DUSECS ; 
 long HUSECS ; 
 int MAXLOOPS ; 
 int MINLOOPS ; 
 long MINSTEP ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timezone*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(void)
{
	struct timeval tp;
	struct timezone tzp;
	long last;
	int i;
	long diff;
	long val;
	int minsteps = MINLOOPS;	/* need at least this many steps */

	FUNC0(&tp, &tzp);
	last = tp.tv_usec;
	for (i = - --minsteps; i< MAXLOOPS; i++) {
		FUNC0(&tp, &tzp);
		diff = tp.tv_usec - last;
		if (diff < 0) diff += DUSECS;
		if (diff > MINSTEP) if (minsteps-- <= 0) break;
		last = tp.tv_usec;
	}

	FUNC1("resolution = %ld usec after %d loop%s\n",
	       diff, i, (i==1) ? "" : "s");

	diff = (diff *3)/2;
	if (i >= MAXLOOPS) {
		FUNC1(
			"     (Boy this machine is fast ! %d loops without a step)\n",
			MAXLOOPS);
		diff = 1; /* No STEP, so FAST machine */
	}
	if (i == 0) {
		FUNC1(
			"     (The resolution is less than the time to read the clock -- Assume 1us)\n");
		diff = 1; /* time to read clock >= resolution */
	}
	for (i=0, val=HUSECS; val>0; i--, val >>= 1) if (diff >= val) return i;
	FUNC1("     (Oh dear -- that wasn't expected ! I'll guess !)\n");
	return DEFAULT_SYS_PRECISION /* Something's BUST, so lie ! */;
}
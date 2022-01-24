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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EX_OK ; 
 int EX_SOFTWARE ; 
 int /*<<< orphan*/  SLEW ; 
 int /*<<< orphan*/  STEP ; 
 scalar_t__ TRUE ; 
 int FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 
 int FUNC3 (double) ; 
 scalar_t__ steplimit ; 
 scalar_t__ time_adjusted ; 

int
FUNC4(
	double offset
	)
{
	int rc;

	if (time_adjusted)
		return EX_OK;

	/*
	** If we can step but we cannot slew, then step.
	** If we can step or slew and and |offset| > steplimit, then step.
	*/
	if (FUNC0(STEP) &&
	    (   !FUNC0(SLEW)
	     || (FUNC0(SLEW) && (FUNC2(offset) > steplimit))
	    )) {
		rc = FUNC3(offset);

		/* If there was a problem, can we rely on errno? */
		if (1 == rc)
			time_adjusted = TRUE;
		return (time_adjusted)
			   ? EX_OK 
			   : 1;
		/*
		** In case of error, what should we use?
		** EX_UNAVAILABLE?
		** EX_OSERR?
		** EX_NOPERM?
		*/
	}

	if (FUNC0(SLEW)) {
		rc = FUNC1(offset);

		/* If there was a problem, can we rely on errno? */
		if (1 == rc)
			time_adjusted = TRUE;
		return (time_adjusted)
			   ? EX_OK 
			   : 1;
		/*
		** In case of error, what should we use?
		** EX_UNAVAILABLE?
		** EX_OSERR?
		** EX_NOPERM?
		*/
	}

	return EX_SOFTWARE;
}
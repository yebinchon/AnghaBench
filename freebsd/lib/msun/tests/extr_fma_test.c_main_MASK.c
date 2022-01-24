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
 int FE_DOWNWARD ; 
 int FE_TONEAREST ; 
 int FE_TOWARDZERO ; 
 int FE_UPWARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(void)
{
	int rmodes[] = { FE_TONEAREST, FE_UPWARD, FE_DOWNWARD, FE_TOWARDZERO };
	unsigned i, j;

#if defined(__i386__)
	printf("1..0 # SKIP all testcases fail on i386\n");
	exit(0);
#endif

	j = 1;

	FUNC3("1..19\n");

	for (i = 0; i < FUNC2(rmodes); i++, j++) {
		FUNC3("rmode = %d\n", rmodes[i]);
		FUNC1(rmodes[i]);
		FUNC10();
		FUNC3("ok %d - fma zeroes\n", j);
	}

	for (i = 0; i < FUNC2(rmodes); i++, j++) {
#if defined(__amd64__)
		FUNC3("ok %d # SKIP testcase fails assertion on "
		    "amd64\n", j);
		continue;
#else
		printf("rmode = %d\n", rmodes[i]);
		fesetround(rmodes[i]);
		test_infinities();
		printf("ok %d - fma infinities\n", j);
#endif
	}

	FUNC1(FE_TONEAREST);
	FUNC8();
	FUNC3("ok %d - fma NaNs\n", j);
	j++;

	for (i = 0; i < FUNC2(rmodes); i++, j++) {
		FUNC3("rmode = %d\n", rmodes[i]);
		FUNC1(rmodes[i]);
		FUNC9();
		FUNC3("ok %d - fma small z\n", j);
	}

	for (i = 0; i < FUNC2(rmodes); i++, j++) {
		FUNC3("rmode = %d\n", rmodes[i]);
		FUNC1(rmodes[i]);
		FUNC5();
		FUNC3("ok %d - fma big z\n", j);
	}

	FUNC1(FE_TONEAREST);
	FUNC4();
	FUNC3("ok %d - fma accuracy\n", j);
	j++;

	FUNC6();
	FUNC3("ok %d - fma double rounding\n", j);
	j++;

	/*
	 * TODO:
	 * - Tests for subnormals
	 * - Cancellation tests (e.g., z = (double)x*y, but x*y is inexact)
	 */

	return (0);
}
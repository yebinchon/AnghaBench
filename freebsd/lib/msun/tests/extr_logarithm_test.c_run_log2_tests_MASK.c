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
 int /*<<< orphan*/  ALL_STD_EXCEPT ; 
 unsigned int DBL_MANT_DIG ; 
 unsigned int DBL_MAX_EXP ; 
 unsigned int DBL_MIN_EXP ; 
 int /*<<< orphan*/  FE_ALL_EXCEPT ; 
 unsigned int FLT_MANT_DIG ; 
 unsigned int FLT_MAX_EXP ; 
 unsigned int FLT_MIN_EXP ; 
 unsigned int LDBL_MANT_DIG ; 
 unsigned int LDBL_MAX_EXP ; 
 unsigned int LDBL_MIN_EXP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (double,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (double,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	unsigned i;

	/*
	 * We should insist that log2() return exactly the correct
	 * result and not raise an inexact exception for powers of 2.
	 */
	FUNC0(FUNC1(FE_ALL_EXCEPT) == 0);
	for (i = FLT_MIN_EXP - FLT_MANT_DIG; i < FLT_MAX_EXP; i++) {
		FUNC0(FUNC7(FUNC4(1.0, i)) == i);
		FUNC0(FUNC2(ALL_STD_EXCEPT) == 0);
	}
	for (i = DBL_MIN_EXP - DBL_MANT_DIG; i < DBL_MAX_EXP; i++) {
		FUNC0(FUNC6(FUNC3(1.0, i)) == i);
		FUNC0(FUNC2(ALL_STD_EXCEPT) == 0);
	}
	for (i = LDBL_MIN_EXP - LDBL_MANT_DIG; i < LDBL_MAX_EXP; i++) {
		FUNC0(FUNC8(FUNC5(1.0, i)) == i);
#if 0
		/* XXX This test does not pass yet. */
		assert(fetestexcept(ALL_STD_EXCEPT) == 0);
#endif
	}
}
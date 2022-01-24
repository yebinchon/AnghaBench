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
 int ALL_STD_EXCEPT ; 
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 int FE_INEXACT ; 
 int FE_INVALID ; 
 double INFINITY ; 
 double NAN ; 
 double* finites ; 
 unsigned int FUNC1 (double*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	unsigned i;

	/* cexp(x + NaNi) = NaN + NaNi and optionally raises invalid */
	/* cexp(NaN + yi) = NaN + NaNi and optionally raises invalid (|y|>0) */
	for (i = 0; i < FUNC1(finites); i++) {
		FUNC2("# Run %d..\n", i);
		FUNC3(FUNC0(finites[i], NAN), FUNC0(NAN, NAN),
			ALL_STD_EXCEPT & ~FE_INVALID, 0, 0);
		if (finites[i] == 0.0)
			continue;
		/* XXX FE_INEXACT shouldn't be raised here */
		FUNC3(FUNC0(NAN, finites[i]), FUNC0(NAN, NAN),
			ALL_STD_EXCEPT & ~(FE_INVALID | FE_INEXACT), 0, 0);
	}

	/* cexp(NaN +- 0i) = NaN +- 0i */
	FUNC3(FUNC0(NAN, 0.0), FUNC0(NAN, 0.0), ALL_STD_EXCEPT, 0, 1);
	FUNC3(FUNC0(NAN, -0.0), FUNC0(NAN, -0.0), ALL_STD_EXCEPT, 0, 1);

	/* cexp(inf + NaN i) = inf + nan i */
	FUNC3(FUNC0(INFINITY, NAN), FUNC0(INFINITY, NAN),
		ALL_STD_EXCEPT, 0, 0);
	/* cexp(-inf + NaN i) = 0 */
	FUNC3(FUNC0(-INFINITY, NAN), FUNC0(0.0, 0.0),
		ALL_STD_EXCEPT, 0, 0);
	/* cexp(NaN + NaN i) = NaN + NaN i */
	FUNC3(FUNC0(NAN, NAN), FUNC0(NAN, NAN),
		ALL_STD_EXCEPT, 0, 0);
}
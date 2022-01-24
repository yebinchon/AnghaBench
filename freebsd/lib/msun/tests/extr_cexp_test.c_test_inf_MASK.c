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
 int /*<<< orphan*/  FE_INVALID ; 
 double INFINITY ; 
 int M_PI_4 ; 
 double NAN ; 
 double* finites ; 
 unsigned int FUNC1 (double*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	unsigned i;

	/* cexp(x + inf i) = NaN + NaNi and raises invalid */
	for (i = 0; i < FUNC1(finites); i++) {
		FUNC2("# Run %d..\n", i);
		FUNC3(FUNC0(finites[i], INFINITY), FUNC0(NAN, NAN),
			ALL_STD_EXCEPT, FE_INVALID, 1);
	}
	/* cexp(-inf + yi) = 0 * (cos(y) + sin(y)i) */
	/* XXX shouldn't raise an inexact exception */
	FUNC3(FUNC0(-INFINITY, M_PI_4), FUNC0(0.0, 0.0),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(-INFINITY, 3 * M_PI_4), FUNC0(-0.0, 0.0),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(-INFINITY, 5 * M_PI_4), FUNC0(-0.0, -0.0),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(-INFINITY, 7 * M_PI_4), FUNC0(0.0, -0.0),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(-INFINITY, 0.0), FUNC0(0.0, 0.0),
		ALL_STD_EXCEPT, 0, 1);
	FUNC3(FUNC0(-INFINITY, -0.0), FUNC0(0.0, -0.0),
		ALL_STD_EXCEPT, 0, 1);
	/* cexp(inf + yi) = inf * (cos(y) + sin(y)i) (except y=0) */
	/* XXX shouldn't raise an inexact exception */
	FUNC3(FUNC0(INFINITY, M_PI_4), FUNC0(INFINITY, INFINITY),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(INFINITY, 3 * M_PI_4), FUNC0(-INFINITY, INFINITY),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(INFINITY, 5 * M_PI_4), FUNC0(-INFINITY, -INFINITY),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	FUNC3(FUNC0(INFINITY, 7 * M_PI_4), FUNC0(INFINITY, -INFINITY),
		ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
	/* cexp(inf + 0i) = inf + 0i */
	FUNC3(FUNC0(INFINITY, 0.0), FUNC0(INFINITY, 0.0),
		ALL_STD_EXCEPT, 0, 1);
	FUNC3(FUNC0(INFINITY, -0.0), FUNC0(INFINITY, -0.0),
		ALL_STD_EXCEPT, 0, 1);
}
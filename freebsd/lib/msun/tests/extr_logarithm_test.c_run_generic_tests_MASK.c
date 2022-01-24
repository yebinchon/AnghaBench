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
 int /*<<< orphan*/  FE_DIVBYZERO ; 
 int FE_INEXACT ; 
 int /*<<< orphan*/  FE_INVALID ; 
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (double,double,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,double,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/* log(1) == 0, no exceptions raised */
	FUNC0(1.0, 0.0, ALL_STD_EXCEPT, 0);
	FUNC1(0.0, 0.0, ALL_STD_EXCEPT, 0);
	FUNC1(-0.0, -0.0, ALL_STD_EXCEPT, 0);

	/* log(NaN) == NaN, no exceptions raised */
	FUNC0(NAN, NAN, ALL_STD_EXCEPT, 0);
	FUNC1(NAN, NAN, ALL_STD_EXCEPT, 0);

	/* log(Inf) == Inf, no exceptions raised */
	FUNC0(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);
	FUNC1(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);

	/* log(x) == NaN for x < 0, invalid exception raised */
	FUNC0(-INFINITY, NAN, ALL_STD_EXCEPT, FE_INVALID);
	FUNC1(-INFINITY, NAN, ALL_STD_EXCEPT, FE_INVALID);
	FUNC0(-1.0, NAN, ALL_STD_EXCEPT, FE_INVALID);
	FUNC1(-1.5, NAN, ALL_STD_EXCEPT, FE_INVALID);

	/* log(0) == -Inf, divide-by-zero exception */
	FUNC0(0.0, -INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_DIVBYZERO);
	FUNC0(-0.0, -INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_DIVBYZERO);
	FUNC1(-1.0, -INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_DIVBYZERO);
}
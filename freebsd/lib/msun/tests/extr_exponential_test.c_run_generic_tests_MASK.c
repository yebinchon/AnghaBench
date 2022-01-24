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
 int FE_INEXACT ; 
 int FE_OVERFLOW ; 
 int FE_UNDERFLOW ; 
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (double,double,int,int) ; 
 int /*<<< orphan*/  FUNC1 (double,double,int,int) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/* exp(0) == 1, no exceptions raised */
	FUNC0(0.0, 1.0, ALL_STD_EXCEPT, 0);
	FUNC1(0.0, 0.0, ALL_STD_EXCEPT, 0);
	FUNC0(-0.0, 1.0, ALL_STD_EXCEPT, 0);
	FUNC1(-0.0, -0.0, ALL_STD_EXCEPT, 0);

	/* exp(NaN) == NaN, no exceptions raised */
	FUNC0(NAN, NAN, ALL_STD_EXCEPT, 0);
	FUNC1(NAN, NAN, ALL_STD_EXCEPT, 0);

	/* exp(Inf) == Inf, no exceptions raised */
	FUNC0(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);
	FUNC1(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);

	/* exp(-Inf) == 0, no exceptions raised */
	FUNC0(-INFINITY, 0.0, ALL_STD_EXCEPT, 0);
	FUNC1(-INFINITY, -1.0, ALL_STD_EXCEPT, 0);

#if !defined(__i386__)
	/* exp(big) == Inf, overflow exception */
	FUNC0(50000.0, INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_OVERFLOW);
	FUNC1(50000.0, INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_OVERFLOW);

	/* exp(small) == 0, underflow and inexact exceptions */
	FUNC0(-50000.0, 0.0, ALL_STD_EXCEPT, FE_UNDERFLOW | FE_INEXACT);
#endif
	FUNC1(-50000.0, -1.0, ALL_STD_EXCEPT, FE_INEXACT);
}
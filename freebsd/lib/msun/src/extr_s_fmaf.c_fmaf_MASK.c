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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,double) ; 
 scalar_t__ FE_TONEAREST ; 
 scalar_t__ FE_TOWARDZERO ; 
 int /*<<< orphan*/  FUNC1 (double,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

float
FUNC4(float x, float y, float z)
{
	double xy, result;
	uint32_t hr, lr;

	xy = (double)x * y;
	result = xy + z;
	FUNC0(hr, lr, result);
	/* Common case: The double precision result is fine. */
	if ((lr & 0x1fffffff) != 0x10000000 ||	/* not a halfway case */
	    (hr & 0x7ff00000) == 0x7ff00000 ||	/* NaN */
	    result - xy == z ||			/* exact */
	    FUNC2() != FE_TONEAREST)	/* not round-to-nearest */
		return (result);

	/*
	 * If result is inexact, and exactly halfway between two float values,
	 * we need to adjust the low-order bit in the direction of the error.
	 */
	FUNC3(FE_TOWARDZERO);
	volatile double vxy = xy;  /* XXX work around gcc CSE bug */
	double adjusted_result = vxy + z;
	FUNC3(FE_TONEAREST);
	if (result == adjusted_result)
		FUNC1(adjusted_result, lr + 1);
	return (adjusted_result);
}
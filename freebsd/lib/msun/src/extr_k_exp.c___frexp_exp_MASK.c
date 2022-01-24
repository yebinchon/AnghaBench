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
 int /*<<< orphan*/  FUNC0 (int,double) ; 
 int /*<<< orphan*/  FUNC1 (double,int) ; 
 double FUNC2 (scalar_t__) ; 
 int k ; 
 scalar_t__ kln2 ; 

__attribute__((used)) static double
FUNC3(double x, int *expt)
{
	double exp_x;
	uint32_t hx;

	/*
	 * We use exp(x) = exp(x - kln2) * 2**k, carefully chosen to
	 * minimize |exp(kln2) - 2**k|.  We also scale the exponent of
	 * exp_x to MAX_EXP so that the result can be multiplied by
	 * a tiny number without losing accuracy due to denormalization.
	 */
	exp_x = FUNC2(x - kln2);
	FUNC0(hx, exp_x);
	*expt = (hx >> 20) - (0x3ff + 1023) + k;
	FUNC1(exp_x, (hx & 0xfffff) | ((0x3ff + 1023) << 20));
	return (exp_x);
}
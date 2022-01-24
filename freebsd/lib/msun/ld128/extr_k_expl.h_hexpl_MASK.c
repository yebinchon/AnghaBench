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
 scalar_t__ BIAS ; 
 int /*<<< orphan*/  FUNC0 (long double,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (long double,long double*,long double*,int*) ; 

__attribute__((used)) static inline long double
FUNC2(long double x)
{
	long double hi, lo, twopkm2;
	int k;

	twopkm2 = 1;
	FUNC1(x, &hi, &lo, &k);
	FUNC0(twopkm2, BIAS + k - 2);
	return (lo + hi) * 2 * twopkm2;
}
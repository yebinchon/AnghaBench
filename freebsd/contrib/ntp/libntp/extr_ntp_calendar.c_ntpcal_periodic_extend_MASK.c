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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

int32_t
FUNC2(
	int32_t pivot,
	int32_t value,
	int32_t cycle
	)
{
	uint32_t diff;
	char	 cpl = 0; /* modulo complement flag */
	char	 neg = 0; /* sign change flag	    */

	/* make the cycle positive and adjust the flags */
	if (cycle < 0) {
		cycle = - cycle;
		neg ^= 1;
		cpl ^= 1;
	}
	/* guard against div by zero or one */
	if (cycle > 1) {
		/*
		 * Get absolute difference as unsigned quantity and
		 * the complement flag. This is done by always
		 * subtracting the smaller value from the bigger
		 * one.
		 */
		if (value >= pivot) {
			diff = FUNC0(value)
			     - FUNC0(pivot);
		} else {
			diff = FUNC0(pivot)
			     - FUNC0(value);
			cpl ^= 1;
		}
		diff %= (uint32_t)cycle;
		if (diff) {
			if (cpl)
				diff = (uint32_t)cycle - diff;
			if (neg)
				diff = ~diff + 1;
			pivot += FUNC1(diff);
		}
	}
	return pivot;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_3__ {int lo; int hi; } ;
typedef  TYPE_1__ ntpcal_split ;
typedef  int int32_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int* shift_month_table ; 
 scalar_t__ FUNC2 (unsigned int) ; 

ntpcal_split
FUNC3(
	int32_t m
	)
{
	ntpcal_split res;

	/* Add ten months and correct if needed. (It likely is...) */
	res.lo  = m + 10;
	res.hi  = (res.lo >= 12);
	if (res.hi)
		res.lo -= 12;

	/* if still out of range, normalise by floor division ... */
	if (res.lo < 0 || res.lo >= 12) {
		uint32_t mu, Q, sflag;
		sflag = FUNC0(res.lo);
		mu    = FUNC1(res.lo);
		Q     = sflag ^ ((sflag ^ mu) / 12u);
		res.hi += FUNC2(Q);
		res.lo  = mu - Q * 12u;
	}
	
	/* get cummulated days in year with unshift */
	res.lo = shift_month_table[res.lo] - 306;

	return res;
}
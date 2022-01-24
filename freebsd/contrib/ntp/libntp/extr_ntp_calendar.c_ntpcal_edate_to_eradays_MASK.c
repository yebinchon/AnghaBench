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
struct TYPE_3__ {scalar_t__ lo; scalar_t__ hi; } ;
typedef  TYPE_1__ ntpcal_split ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int32_t
FUNC2(
	int32_t years,
	int32_t mons,
	int32_t mdays
	)
{
	ntpcal_split tmp;
	int32_t	     res;

	if (mons) {
		tmp = FUNC0(mons);
		res = FUNC1(years + tmp.hi) + tmp.lo;
	} else
		res = FUNC1(years);
	res += mdays;

	return res;
}
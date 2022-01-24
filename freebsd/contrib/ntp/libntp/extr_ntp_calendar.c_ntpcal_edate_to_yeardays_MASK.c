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
struct TYPE_3__ {int hi; scalar_t__ lo; } ;
typedef  TYPE_1__ ntpcal_split ;
typedef  int int32_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 TYPE_1__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__** real_month_table ; 

int32_t
FUNC3(
	int32_t years,
	int32_t mons,
	int32_t mdays
	)
{
	ntpcal_split tmp;

	if (0 <= mons && mons < 12) {
		years += 1;
		mdays += real_month_table[FUNC0(years)][mons];
	} else {
		tmp = FUNC1(mons);
		mdays += tmp.lo
		       + FUNC2(years + tmp.hi)
		       - FUNC2(years);
	}

	return mdays;
}
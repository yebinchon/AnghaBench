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
 scalar_t__ FUNC0 (double,long double) ; 
 scalar_t__ FUNC1 (long double) ; 

__attribute__((used)) static int
FUNC2(long double d1, long double d2)
{

	if (d1 != d2)
		return (FUNC1(d1) && FUNC1(d2));
	return (FUNC0(1.0, d1) == FUNC0(1.0, d2));
}
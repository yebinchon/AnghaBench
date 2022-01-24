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
typedef  int __uint32_t ;
typedef  int __uint16_t ;

/* Variables and functions */
 int FE_ALL_EXCEPT ; 
 int _SSE_EMASK_SHIFT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

int
FUNC5(int mask)
{
	__uint32_t mxcsr, omask;
	__uint16_t control;

	mask &= FE_ALL_EXCEPT;
	FUNC2(&control);
	if (FUNC0())
		FUNC4(&mxcsr);
	else
		mxcsr = 0;
	omask = ~(control | mxcsr >> _SSE_EMASK_SHIFT) & FE_ALL_EXCEPT;
	control |= mask;
	FUNC1(&control);
	if (FUNC0()) {
		mxcsr |= mask << _SSE_EMASK_SHIFT;
		FUNC3(&mxcsr);
	}
	return (omask);
}
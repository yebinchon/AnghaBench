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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

int
FUNC4(int mask)
{
	__uint32_t mxcsr, omask;
	__uint16_t control;

	mask &= FE_ALL_EXCEPT;
	FUNC1(&control);
	FUNC3(&mxcsr);
	omask = ~(control | mxcsr >> _SSE_EMASK_SHIFT) & FE_ALL_EXCEPT;
	control |= mask;
	FUNC0(&control);
	mxcsr |= mask << _SSE_EMASK_SHIFT;
	FUNC2(&mxcsr);
	return (omask);
}
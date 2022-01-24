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
struct TYPE_3__ {int __mxcsr; int /*<<< orphan*/  __x87; } ;
typedef  TYPE_1__ fenv_t ;
typedef  int __uint32_t ;

/* Variables and functions */
 int FE_ALL_EXCEPT ; 
 int _SSE_EMASK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

int
FUNC4(fenv_t *envp)
{
	__uint32_t mxcsr;

	FUNC3(&mxcsr);
	FUNC1(&envp->__x87);
	FUNC0();
	envp->__mxcsr = mxcsr;
	mxcsr &= ~FE_ALL_EXCEPT;
	mxcsr |= FE_ALL_EXCEPT << _SSE_EMASK_SHIFT;
	FUNC2(&mxcsr);
	return (0);
}
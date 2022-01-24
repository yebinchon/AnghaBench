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
typedef  int /*<<< orphan*/  fenv_t ;
typedef  int __uint32_t ;

/* Variables and functions */
 int FE_ALL_EXCEPT ; 
 int _SSE_EMASK_SHIFT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

int
FUNC6(fenv_t *envp)
{
	__uint32_t mxcsr;

	FUNC2(envp);
	FUNC1();
	if (FUNC0()) {
		FUNC5(&mxcsr);
		FUNC4(*envp, mxcsr);
		mxcsr &= ~FE_ALL_EXCEPT;
		mxcsr |= FE_ALL_EXCEPT << _SSE_EMASK_SHIFT;
		FUNC3(&mxcsr);
	}
	return (0);
}
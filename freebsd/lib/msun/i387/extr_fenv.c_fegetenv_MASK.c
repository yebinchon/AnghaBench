#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  __control; } ;
typedef  TYPE_1__ fenv_t ;
typedef  int /*<<< orphan*/  __uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(fenv_t *envp)
{
	__uint32_t mxcsr;

	FUNC2(envp);
	/*
	 * fnstenv masks all exceptions, so we need to restore
	 * the old control word to avoid this side effect.
	 */
	FUNC1(&envp->__control);
	if (FUNC0()) {
		FUNC4(&mxcsr);
		FUNC3(*envp, mxcsr);
	}
	return (0);
}
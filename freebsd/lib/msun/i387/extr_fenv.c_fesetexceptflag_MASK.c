#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int fexcept_t ;
struct TYPE_4__ {int __status; } ;
typedef  TYPE_1__ fenv_t ;
typedef  int __uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

int
FUNC5(const fexcept_t *flagp, int excepts)
{
	fenv_t env;
	__uint32_t mxcsr;

	FUNC2(&env);
	env.__status &= ~excepts;
	env.__status |= *flagp & excepts;
	FUNC1(&env);

	if (FUNC0()) {
		FUNC4(&mxcsr);
		mxcsr &= ~excepts;
		mxcsr |= *flagp & excepts;
		FUNC3(&mxcsr);
	}

	return (0);
}
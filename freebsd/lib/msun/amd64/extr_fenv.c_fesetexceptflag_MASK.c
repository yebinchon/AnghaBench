#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int fexcept_t ;
struct TYPE_5__ {int __status; } ;
struct TYPE_4__ {int __mxcsr; TYPE_2__ __x87; } ;
typedef  TYPE_1__ fenv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

int
FUNC4(const fexcept_t *flagp, int excepts)
{
	fenv_t env;

	FUNC1(&env.__x87);
	env.__x87.__status &= ~excepts;
	env.__x87.__status |= *flagp & excepts;
	FUNC0(&env.__x87);

	FUNC3(&env.__mxcsr);
	env.__mxcsr &= ~excepts;
	env.__mxcsr |= *flagp & excepts;
	FUNC2(&env.__mxcsr);

	return (0);
}
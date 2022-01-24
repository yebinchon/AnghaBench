#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  __control; } ;
struct TYPE_4__ {TYPE_3__ __x87; int /*<<< orphan*/  __mxcsr; } ;
typedef  TYPE_1__ fenv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(fenv_t *envp)
{

	FUNC1(&envp->__x87);
	FUNC2(&envp->__mxcsr);
	/*
	 * fnstenv masks all exceptions, so we need to restore the
	 * control word to avoid this side effect.
	 */
	FUNC0(&envp->__x87.__control);
	return (0);
}
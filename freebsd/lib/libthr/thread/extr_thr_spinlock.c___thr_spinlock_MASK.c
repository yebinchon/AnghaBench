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
struct spinlock_extra {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct spinlock_extra* thr_extra; } ;
typedef  TYPE_1__ spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  initialized ; 

void
FUNC5(spinlock_t *lck)
{
	struct spinlock_extra *_extra;

	if (!FUNC3())
		FUNC0("Spinlock called when not threaded.");
	if (!initialized)
		FUNC0("Spinlocks not initialized.");
	if (lck->thr_extra == NULL)
		FUNC4(lck);
	_extra = lck->thr_extra;
	FUNC1(FUNC2(), &_extra->lock);
}
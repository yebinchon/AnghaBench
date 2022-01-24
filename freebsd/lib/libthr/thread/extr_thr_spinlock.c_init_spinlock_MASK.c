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
struct pthread {int dummy; } ;
struct TYPE_4__ {TYPE_3__* thr_extra; } ;
typedef  TYPE_1__ spinlock_t ;
struct TYPE_5__ {TYPE_1__* owner; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t MAX_SPINLOCKS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* extra ; 
 size_t spinlock_count ; 
 int /*<<< orphan*/  spinlock_static_lock ; 

__attribute__((used)) static void
FUNC5(spinlock_t *lck)
{
	struct pthread *curthread = FUNC3();

	FUNC1(curthread, &spinlock_static_lock);
	if ((lck->thr_extra == NULL) && (spinlock_count < MAX_SPINLOCKS)) {
		lck->thr_extra = &extra[spinlock_count];
		FUNC4(&extra[spinlock_count].lock);
		extra[spinlock_count].owner = lck;
		spinlock_count++;
	}
	FUNC2(curthread, &spinlock_static_lock);
	if (lck->thr_extra == NULL)
		FUNC0("Warning: exceeded max spinlocks");
}
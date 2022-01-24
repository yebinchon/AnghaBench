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
struct futex_lock {int dummy; } ;
struct futex_condvar {scalar_t__ fc_waitcount; int /*<<< orphan*/  fc_address; struct futex_lock* fc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct futex_condvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_FUTEX ; 
 int /*<<< orphan*/  fc_next ; 
 int /*<<< orphan*/  FUNC1 (struct futex_condvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct futex_condvar*) ; 
 int /*<<< orphan*/  FUNC4 (struct futex_lock*) ; 

__attribute__((used)) static void
FUNC5(struct futex_condvar *fc)
{
	struct futex_lock *fl;

	FUNC3(fc);
	fl = fc->fc_lock;
	if (fc->fc_waitcount == 0) {
		/* Condition variable has no waiters. Deallocate it. */
		FUNC2(&fc->fc_address);
		FUNC0(fc, fc_next);
		FUNC1(fc, M_FUTEX);
	}
	FUNC4(fl);
}
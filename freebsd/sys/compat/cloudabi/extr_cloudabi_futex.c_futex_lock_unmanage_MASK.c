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
struct futex_lock {int /*<<< orphan*/  fl_owner; int /*<<< orphan*/  fl_writers; int /*<<< orphan*/  fl_readers; } ;
typedef  int cloudabi_lock_t ;

/* Variables and functions */
 int CLOUDABI_LOCK_KERNEL_MANAGED ; 
 int /*<<< orphan*/  LOCK_UNMANAGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int*,int,int*,int) ; 
 int FUNC2 (int*,int*) ; 

__attribute__((used)) static int
FUNC3(struct futex_lock *fl, cloudabi_lock_t *lock)
{
	cloudabi_lock_t cmp, old;
	int error;

	if (FUNC0(&fl->fl_readers) == 0 &&
	    FUNC0(&fl->fl_writers) == 0) {
		/* Lock should be unmanaged. */
		fl->fl_owner = LOCK_UNMANAGED;

		/* Clear kernel-managed bit. */
		error = FUNC2(lock, &old);
		if (error != 0)
			return (error);
		for (;;) {
			cmp = old;
			error = FUNC1(lock, cmp, &old,
			    cmp & ~CLOUDABI_LOCK_KERNEL_MANAGED);
			if (error != 0)
				return (error);
			if (old == cmp)
				break;
		}
	}
	return (0);
}
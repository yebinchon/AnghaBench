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
struct futex_lock {int fl_owner; int /*<<< orphan*/  fl_readers; int /*<<< orphan*/  fl_writers; } ;
typedef  int cloudabi_tid_t ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;

/* Variables and functions */
 int CLOUDABI_LOCK_KERNEL_MANAGED ; 
 int CLOUDABI_LOCK_WRLOCKED ; 
 void* LOCK_UNMANAGED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct futex_lock *fl, cloudabi_lock_t *lock)
{
	cloudabi_tid_t tid;
	int error;

	/*
	 * Determine which thread(s) to wake up. Prefer waking up
	 * writers over readers to prevent write starvation.
	 */
	if (FUNC0(&fl->fl_writers) > 0) {
		/* Transfer ownership to a single write-locker. */
		if (FUNC0(&fl->fl_writers) > 1 ||
		    FUNC0(&fl->fl_readers) > 0) {
			/* Lock should remain managed afterwards. */
			tid = FUNC1(&fl->fl_writers);
			error = FUNC4(lock,
			    tid | CLOUDABI_LOCK_WRLOCKED |
			    CLOUDABI_LOCK_KERNEL_MANAGED);
			if (error != 0)
				return (error);

			FUNC3(&fl->fl_writers);
			fl->fl_owner = tid;
		} else {
			/* Lock can become unmanaged afterwards. */
			error = FUNC4(lock,
			    FUNC1(&fl->fl_writers) |
			    CLOUDABI_LOCK_WRLOCKED);
			if (error != 0)
				return (error);

			FUNC3(&fl->fl_writers);
			fl->fl_owner = LOCK_UNMANAGED;
		}
	} else {
		/* Transfer ownership to all read-lockers (if any). */
		error = FUNC4(lock,
		    FUNC0(&fl->fl_readers));
		if (error != 0)
			return (error);

		/* Wake up all threads. */
		FUNC2(&fl->fl_readers);
		fl->fl_owner = LOCK_UNMANAGED;
	}
	return (0);
}
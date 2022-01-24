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
struct thread {int dummy; } ;
struct futex_waiter {int fw_locked; int /*<<< orphan*/  fw_donated; } ;
struct futex_lock {scalar_t__ fl_owner; int /*<<< orphan*/  fl_readers; } ;
typedef  int /*<<< orphan*/  cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;
typedef  int /*<<< orphan*/  cloudabi_clockid_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LOCK_UNMANAGED ; 
 int FUNC1 (struct futex_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct futex_lock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct futex_lock*,struct futex_waiter*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
	struct futex_waiter fw;
	int error;

	error = FUNC1(fl, lock);
	if (error == EBUSY) {
		/* Suspend execution. */
		FUNC0(fl->fl_owner != LOCK_UNMANAGED,
		    ("Attempted to sleep on an unmanaged lock"));
		error = FUNC4(&fl->fl_readers, fl, &fw, td,
		    clock_id, timeout, precision, abstime);
		FUNC0((error == 0) == fw.fw_locked,
		    ("Should have locked write lock on success"));
		FUNC0(FUNC3(&fw.fw_donated) == 0,
		    ("Lock functions cannot receive threads"));
	}
	if (error != 0)
		FUNC2(fl, lock);
	return (error);
}
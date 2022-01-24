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
struct thread {int /*<<< orphan*/  td_tid; } ;
struct futex_queue {int dummy; } ;
struct futex_waiter {int fw_locked; struct futex_queue fw_donated; } ;
struct futex_lock {scalar_t__ fl_owner; int /*<<< orphan*/  fl_writers; } ;
typedef  int /*<<< orphan*/  cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;
typedef  int /*<<< orphan*/  cloudabi_clockid_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LOCK_UNMANAGED ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (struct futex_lock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct futex_lock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct futex_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct futex_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct futex_lock*,struct futex_waiter*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct futex_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct futex_lock *fl, struct thread *td,
    cloudabi_lock_t *lock, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime,
    struct futex_queue *donated)
{
	struct futex_waiter fw;
	int error;

	error = FUNC1(fl, lock, td->td_tid,
	    FUNC3(donated) > 0);

	if (error == 0 || error == EBUSY) {
		/* Put donated threads in queue before suspending. */
		FUNC0(FUNC3(donated) == 0 ||
		    fl->fl_owner != LOCK_UNMANAGED,
		    ("Lock should be managed if we are going to donate"));
		FUNC4(donated, &fl->fl_writers, UINT_MAX);
	} else {
		/*
		 * This thread cannot deal with the donated threads.
		 * Wake up the next thread and let it try it by itself.
		 */
		FUNC6(donated, UINT_MAX);
	}

	if (error == EBUSY) {
		/* Suspend execution if the lock was busy. */
		FUNC0(fl->fl_owner != LOCK_UNMANAGED,
		    ("Attempted to sleep on an unmanaged lock"));
		error = FUNC5(&fl->fl_writers, fl, &fw, td,
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
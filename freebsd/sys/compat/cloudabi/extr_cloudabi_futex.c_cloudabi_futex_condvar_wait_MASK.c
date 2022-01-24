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
struct futex_waiter {int /*<<< orphan*/  fw_donated; scalar_t__ fw_locked; } ;
struct futex_lock {int dummy; } ;
struct futex_condvar {int /*<<< orphan*/  fc_waitcount; struct futex_lock* fc_lock; int /*<<< orphan*/  fc_waiters; } ;
typedef  int /*<<< orphan*/  cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  cloudabi_scope_t ;
typedef  int /*<<< orphan*/  cloudabi_lock_t ;
typedef  int /*<<< orphan*/  cloudabi_condvar_t ;
typedef  int /*<<< orphan*/  cloudabi_clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOUDABI_CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOUDABI_CONDVAR_HAS_NO_WAITERS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct futex_condvar**) ; 
 int /*<<< orphan*/  FUNC2 (struct futex_condvar*) ; 
 int /*<<< orphan*/  FUNC3 (struct futex_condvar*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct futex_lock*,struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct futex_lock*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct futex_lock*,struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct futex_lock*,struct futex_waiter*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(struct thread *td, cloudabi_condvar_t *condvar,
    cloudabi_scope_t condvar_scope, cloudabi_lock_t *lock,
    cloudabi_scope_t lock_scope, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
	struct futex_condvar *fc;
	struct futex_lock *fl;
	struct futex_waiter fw;
	int error, error2;

	/* Lookup condition variable object. */
	error = FUNC1(td, condvar, condvar_scope, lock,
	    lock_scope, &fc);
	if (error != 0)
		return (error);
	fl = fc->fc_lock;

	/*
	 * Set the condition variable to something other than
	 * CLOUDABI_CONDVAR_HAS_NO_WAITERS to make userspace threads
	 * call into the kernel to perform wakeups.
	 */
	error = FUNC9(condvar, ~CLOUDABI_CONDVAR_HAS_NO_WAITERS);
	if (error != 0) {
		FUNC2(fc);
		return (error);
	}

	/* Drop the lock. */
	error = FUNC4(fl, td, lock);
	if (error != 0) {
		FUNC3(fc, condvar);
		FUNC2(fc);
		return (error);
	}

	/* Go to sleep. */
	++fc->fc_waitcount;
	error = FUNC8(&fc->fc_waiters, fc->fc_lock, &fw, td,
	    clock_id, timeout, precision, abstime);
	if (fw.fw_locked) {
		/* Waited and got the lock assigned to us. */
		FUNC0(FUNC7(&fw.fw_donated) == 0,
		    ("Received threads while being locked"));
	} else if (error == 0 || error == ETIMEDOUT) {
		if (error != 0)
			FUNC3(fc, condvar);
		/*
		 * Got woken up without having the lock assigned to us.
		 * This can happen in two cases:
		 *
		 * 1. We observed a timeout on a condition variable.
		 * 2. We got signalled on a condition variable while the
		 *    associated lock is unlocked. We are the first
		 *    thread that gets woken up. This thread is
		 *    responsible for reacquiring the userspace lock.
		 */
		error2 = FUNC6(fl, td, lock,
		    CLOUDABI_CLOCK_MONOTONIC, UINT64_MAX, 0, abstime,
		    &fw.fw_donated);
		if (error2 != 0)
			error = error2;
	} else {
		FUNC0(FUNC7(&fw.fw_donated) == 0,
		    ("Received threads on error"));
		FUNC3(fc, condvar);
		FUNC5(fl, lock);
	}
	--fc->fc_waitcount;
	FUNC2(fc);
	return (error);
}
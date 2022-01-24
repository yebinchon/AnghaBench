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
struct futex_waiter {int fw_locked; struct futex_queue* fw_queue; int /*<<< orphan*/  fw_wait; int /*<<< orphan*/  fw_donated; int /*<<< orphan*/  fw_tid; } ;
struct futex_queue {int /*<<< orphan*/  fq_count; int /*<<< orphan*/  fq_list; } ;
struct futex_lock {int /*<<< orphan*/  fl_waitcount; } ;
typedef  int /*<<< orphan*/  sbintime_t ;
typedef  scalar_t__ cloudabi_timestamp_t ;
typedef  int /*<<< orphan*/  cloudabi_clockid_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct futex_waiter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct futex_waiter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  futex_global_lock ; 
 int /*<<< orphan*/  FUNC7 (struct futex_lock*) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  futex_waiter ; 
 int /*<<< orphan*/  fw_next ; 

__attribute__((used)) static int
FUNC10(struct futex_queue *fq, struct futex_lock *fl,
    struct futex_waiter *fw, struct thread *td, cloudabi_clockid_t clock_id,
    cloudabi_timestamp_t timeout, cloudabi_timestamp_t precision, bool abstime)
{
	sbintime_t sbttimeout, sbtprecision;
	int error;

	/* Initialize futex_waiter object. */
	fw->fw_tid = td->td_tid;
	fw->fw_locked = false;
	FUNC9(&fw->fw_donated);

	if (timeout != UINT64_MAX) {
		/* Convert timeout duration. */
		error = FUNC8(td, clock_id, timeout,
		    precision, &sbttimeout, &sbtprecision, abstime);
		if (error != 0)
			return (error);
	}

	/* Place object in the queue. */
	fw->fw_queue = fq;
	FUNC1(&fq->fq_list, fw, fw_next);
	++fq->fq_count;

	FUNC4(&fw->fw_wait, "futex");
	++fl->fl_waitcount;

	FUNC7(fl);
	if (timeout == UINT64_MAX) {
		/* Wait without a timeout. */
		error = FUNC6(&fw->fw_wait, &futex_global_lock);
	} else {
		/* Wait respecting the timeout. */
		error = FUNC5(&fw->fw_wait, &futex_global_lock,
		    sbttimeout, sbtprecision, 0);
		FUNC7(fl);
		if (error == EWOULDBLOCK &&
		    fw->fw_queue != NULL && fw->fw_queue != fq) {
			/*
			 * We got signalled on a condition variable, but
			 * observed a timeout while waiting to reacquire
			 * the lock. In other words, we didn't actually
			 * time out. Go back to sleep and wait for the
			 * lock to be reacquired.
			 */
			error = FUNC6(&fw->fw_wait, &futex_global_lock);
		}
	}
	FUNC7(fl);

	--fl->fl_waitcount;
	FUNC3(&fw->fw_wait);

	fq = fw->fw_queue;
	if (fq == NULL) {
		/* Thread got dequeued, so we've slept successfully. */
		return (0);
	}

	/* Thread is still enqueued. Remove it. */
	FUNC0(error != 0, ("Woken up thread is still enqueued"));
	FUNC2(&fq->fq_list, fw, futex_waiter, fw_next);
	--fq->fq_count;
	return (error == EWOULDBLOCK ? ETIMEDOUT : error);
}
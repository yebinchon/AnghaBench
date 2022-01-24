#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct sleepqueue {int dummy; } ;
struct TYPE_4__ {int m_owner; int /*<<< orphan*/  m_flags; } ;
struct pthread_mutex {TYPE_2__ m_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  c_clockid; } ;
struct pthread_cond {int __has_user_waiters; TYPE_1__ kcond; } ;
struct pthread {scalar_t__ nwaiter_defer; struct pthread_mutex* mutex_obj; int /*<<< orphan*/ * wchan; int /*<<< orphan*/  defer_waiters; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pthread*) ; 
 int /*<<< orphan*/  PTHREAD_CANCELED ; 
 scalar_t__ FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  UMTX_OP_MUTEX_WAKE2 ; 
 int UMUTEX_CONTESTED ; 
 struct pthread* FUNC3 () ; 
 int FUNC4 (struct pthread_mutex*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread_mutex*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread_cond*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC8 (struct pthread_cond*) ; 
 struct sleepqueue* FUNC9 (struct pthread_cond*) ; 
 void* FUNC10 (struct sleepqueue*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC11 (struct pthread_cond*) ; 
 int /*<<< orphan*/  FUNC12 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pthread*) ; 
 int FUNC15 (struct pthread*,int /*<<< orphan*/ ,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC16 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct pthread_cond *cvp, struct pthread_mutex *mp,
    const struct timespec *abstime, int cancel)
{
	struct pthread *curthread;
	struct sleepqueue *sq;
	int deferred, error, error2, recurse;

	curthread = FUNC3();
	if (curthread->wchan != NULL)
		FUNC0("thread %p was already on queue.", curthread);

	if (cancel)
		FUNC16(curthread);

	FUNC8(cvp);
	/*
	 * set __has_user_waiters before unlocking mutex, this allows
	 * us to check it without locking in pthread_cond_signal().
	 */
	cvp->__has_user_waiters = 1; 
	deferred = 0;
	(void)FUNC5(mp, &recurse, &deferred);
	curthread->mutex_obj = mp;
	FUNC7(cvp, curthread);
	for(;;) {
		FUNC14(curthread);
		FUNC11(cvp);
		if (deferred) {
			deferred = 0;
			if ((mp->m_lock.m_owner & UMUTEX_CONTESTED) == 0)
				(void)FUNC18(&mp->m_lock,
				    UMTX_OP_MUTEX_WAKE2, mp->m_lock.m_flags,
				    0, 0);
		}
		if (curthread->nwaiter_defer > 0) {
			FUNC17(curthread->defer_waiters,
			    curthread->nwaiter_defer);
			curthread->nwaiter_defer = 0;
		}

		if (cancel)
			FUNC12(curthread, 0);
		error = FUNC15(curthread, cvp->kcond.c_clockid, abstime);
		if (cancel)
			FUNC13(curthread, 0);

		FUNC8(cvp);
		if (curthread->wchan == NULL) {
			error = 0;
			break;
		} else if (cancel && FUNC1(curthread)) {
			sq = FUNC9(cvp);
			cvp->__has_user_waiters = FUNC10(sq, curthread);
			FUNC11(cvp);
			curthread->mutex_obj = NULL;
			error2 = FUNC4(mp, recurse, false);
			if (!FUNC2(curthread))
				FUNC6(PTHREAD_CANCELED);
			else /* this should not happen */
				return (error2);
		} else if (error == ETIMEDOUT) {
			sq = FUNC9(cvp);
			cvp->__has_user_waiters =
			    FUNC10(sq, curthread);
			break;
		}
	}
	FUNC11(cvp);
	curthread->mutex_obj = NULL;
	error2 = FUNC4(mp, recurse, false);
	if (error == 0)
		error = error2;
	return (error);
}
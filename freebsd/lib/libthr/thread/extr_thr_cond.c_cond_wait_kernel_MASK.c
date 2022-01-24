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
struct timespec {int dummy; } ;
struct pthread_mutex {int /*<<< orphan*/  m_lock; } ;
struct pthread_cond {int /*<<< orphan*/  kcond; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int CVWAIT_ABSTIME ; 
 int CVWAIT_CLOCKID ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 struct pthread* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pthread_mutex*,int) ; 
 int FUNC2 (struct pthread_mutex*,int*) ; 
 int FUNC3 (struct pthread_mutex*,int,int) ; 
 int FUNC4 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC6 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pthread*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec const*,int) ; 

__attribute__((used)) static int
FUNC10(struct pthread_cond *cvp, struct pthread_mutex *mp,
    const struct timespec *abstime, int cancel)
{
	struct pthread *curthread;
	int error, error2, recurse, robust;

	curthread = FUNC0();
	robust = FUNC4(curthread, mp);

	error = FUNC2(mp, &recurse);
	if (error != 0) {
		if (robust)
			FUNC5(curthread, mp);
		return (error);
	}

	if (cancel)
		FUNC6(curthread, 0);
	error = FUNC9(&cvp->kcond, &mp->m_lock, abstime,
	    CVWAIT_ABSTIME | CVWAIT_CLOCKID);
	if (cancel)
		FUNC7(curthread, 0);

	/*
	 * Note that PP mutex and ROBUST mutex may return
	 * interesting error codes.
	 */
	if (error == 0) {
		error2 = FUNC3(mp, recurse, true);
	} else if (error == EINTR || error == ETIMEDOUT) {
		error2 = FUNC3(mp, recurse, true);
		/*
		 * Do not do cancellation on EOWNERDEAD there.  The
		 * cancellation cleanup handler will use the protected
		 * state and unlock the mutex without making the state
		 * consistent and the state will be unrecoverable.
		 */
		if (error2 == 0 && cancel) {
			if (robust) {
				FUNC5(curthread, mp);
				robust = false;
			}
			FUNC8(curthread);
		}

		if (error == EINTR)
			error = 0;
	} else {
		/* We know that it didn't unlock the mutex. */
		FUNC1(mp, recurse);
		if (cancel) {
			if (robust) {
				FUNC5(curthread, mp);
				robust = false;
			}
			FUNC8(curthread);
		}
		error2 = 0;
	}
	if (robust)
		FUNC5(curthread, mp);
	return (error2 != 0 ? error2 : error);
}
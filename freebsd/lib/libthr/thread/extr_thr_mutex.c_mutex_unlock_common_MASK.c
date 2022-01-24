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
typedef  scalar_t__ uint32_t ;
struct pthread_mutex {int m_flags; scalar_t__ m_count; int /*<<< orphan*/  m_lock; } ;
struct pthread {scalar_t__ nwaiter_defer; int /*<<< orphan*/  defer_waiters; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int PMUTEX_FLAG_DEFERRED ; 
 int PMUTEX_FLAG_PRIVATE ; 
 scalar_t__ FUNC0 (struct pthread_mutex*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 struct pthread_mutex* THR_MUTEX_DESTROYED ; 
 scalar_t__ FUNC3 (struct pthread*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct pthread* FUNC5 () ; 
 int FUNC6 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,struct pthread_mutex*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pthread*,struct pthread_mutex*) ; 

__attribute__((used)) static int
FUNC11(struct pthread_mutex *m, bool cv, int *mtx_defer)
{
	struct pthread *curthread;
	uint32_t id;
	int deferred, error, private, robust;

	if (FUNC4(m <= THR_MUTEX_DESTROYED)) {
		if (m == THR_MUTEX_DESTROYED)
			return (EINVAL);
		return (EPERM);
	}

	curthread = FUNC5();
	id = FUNC3(curthread);

	/*
	 * Check if the running thread is not the owner of the mutex.
	 */
	if (FUNC4(FUNC0(m) != id))
		return (EPERM);

	error = 0;
	private = (m->m_flags & PMUTEX_FLAG_PRIVATE) != 0;
	if (FUNC4(FUNC1(m->m_flags) ==
	    PTHREAD_MUTEX_RECURSIVE && m->m_count > 0)) {
		m->m_count--;
	} else {
		if ((m->m_flags & PMUTEX_FLAG_DEFERRED) != 0) {
			deferred = 1;
			m->m_flags &= ~PMUTEX_FLAG_DEFERRED;
        	} else
			deferred = 0;

		robust = FUNC6(curthread, m);
		FUNC10(curthread, m);
		error = FUNC8(&m->m_lock, id, mtx_defer);
		if (deferred)  {
			if (mtx_defer == NULL) {
				FUNC9(curthread->defer_waiters,
				    curthread->nwaiter_defer);
				curthread->nwaiter_defer = 0;
			} else
				*mtx_defer = 1;
		}
		if (robust)
			FUNC7(curthread, m);
	}
	if (!cv && private)
		FUNC2(curthread);
	return (error);
}
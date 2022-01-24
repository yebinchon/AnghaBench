#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timespec {int tv_nsec; } ;
struct TYPE_3__ {int m_flags; int m_owner; } ;
struct pthread_mutex {int m_spinloops; int m_yieldloops; TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_SPINWAIT ; 
 int EINVAL ; 
 int EOWNERDEAD ; 
 int FUNC0 (struct pthread_mutex*) ; 
 int FUNC1 (struct pthread*) ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_NONCONSISTENT ; 
 int UMUTEX_PRIO_INHERIT ; 
 int UMUTEX_PRIO_PROTECT ; 
 int UMUTEX_ROBUST ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  _thr_is_smp ; 
 scalar_t__ FUNC6 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,struct pthread_mutex*,int) ; 
 int FUNC8 (struct pthread_mutex*,struct timespec const*) ; 

__attribute__((used)) static int
FUNC9(struct pthread *curthread, struct pthread_mutex *m,
    const struct timespec *abstime)
{
	uint32_t id, owner;
	int count, ret;

	id = FUNC1(curthread);
	if (FUNC0(m) == id)
		return (FUNC8(m, abstime));

	/*
	 * For adaptive mutexes, spin for a bit in the expectation
	 * that if the application requests this mutex type then
	 * the lock is likely to be released quickly and it is
	 * faster than entering the kernel
	 */
	if (FUNC2((m->m_lock.m_flags & (UMUTEX_PRIO_PROTECT |
	    UMUTEX_PRIO_INHERIT | UMUTEX_ROBUST | UMUTEX_NONCONSISTENT)) != 0))
		goto sleep_in_kernel;

	if (!_thr_is_smp)
		goto yield_loop;

	count = m->m_spinloops;
	while (count--) {
		owner = m->m_lock.m_owner;
		if ((owner & ~UMUTEX_CONTESTED) == 0) {
			if (FUNC6(&m->m_lock.m_owner, owner,
			    id | owner)) {
				ret = 0;
				goto done;
			}
		}
		CPU_SPINWAIT;
	}

yield_loop:
	count = m->m_yieldloops;
	while (count--) {
		FUNC5();
		owner = m->m_lock.m_owner;
		if ((owner & ~UMUTEX_CONTESTED) == 0) {
			if (FUNC6(&m->m_lock.m_owner, owner,
			    id | owner)) {
				ret = 0;
				goto done;
			}
		}
	}

sleep_in_kernel:
	if (abstime == NULL)
		ret = FUNC3(&m->m_lock, id);
	else if (FUNC2(abstime->tv_nsec < 0 ||
	    abstime->tv_nsec >= 1000000000))
		ret = EINVAL;
	else
		ret = FUNC4(&m->m_lock, id, abstime);
done:
	if (ret == 0 || ret == EOWNERDEAD) {
		FUNC7(curthread, m, ret);
		if (ret == EOWNERDEAD)
			m->m_lock.m_flags |= UMUTEX_NONCONSISTENT;
	}
	return (ret);
}
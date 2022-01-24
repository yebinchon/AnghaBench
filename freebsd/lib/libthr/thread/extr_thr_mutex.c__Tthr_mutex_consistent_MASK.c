#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int m_flags; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;
typedef  struct pthread_mutex* pthread_mutex_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct pthread_mutex*) ; 
 struct pthread_mutex* THR_MUTEX_DESTROYED ; 
 struct pthread_mutex* THR_PSHARED_PTR ; 
 scalar_t__ FUNC1 (struct pthread*) ; 
 int UMUTEX_NONCONSISTENT ; 
 int UMUTEX_ROBUST ; 
 struct pthread_mutex* FUNC2 (struct pthread_mutex**,int /*<<< orphan*/ ) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pthread_mutex*,int /*<<< orphan*/ *) ; 

int
FUNC5(pthread_mutex_t *mutex)
{
	struct pthread_mutex *m;
	struct pthread *curthread;

	if (*mutex == THR_PSHARED_PTR) {
		m = FUNC2(mutex, 0);
		if (m == NULL)
			return (EINVAL);
		FUNC4(m, NULL);
	} else {
		m = *mutex;
		if (m <= THR_MUTEX_DESTROYED)
			return (EINVAL);
	}
	curthread = FUNC3();
	if ((m->m_lock.m_flags & (UMUTEX_ROBUST | UMUTEX_NONCONSISTENT)) !=
	    (UMUTEX_ROBUST | UMUTEX_NONCONSISTENT))
		return (EINVAL);
	if (FUNC0(m) != FUNC1(curthread))
		return (EPERM);
	m->m_lock.m_flags &= ~UMUTEX_NONCONSISTENT;
	return (0);
}
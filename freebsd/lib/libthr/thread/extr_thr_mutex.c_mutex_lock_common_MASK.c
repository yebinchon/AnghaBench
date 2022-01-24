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
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_flags; } ;
struct pthread_mutex {int m_flags; TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int EOWNERDEAD ; 
 int PMUTEX_FLAG_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  UMUTEX_NONCONSISTENT ; 
 struct pthread* FUNC3 () ; 
 int FUNC4 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*,struct pthread_mutex*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,struct pthread_mutex*,int) ; 
 int FUNC8 (struct pthread*,struct pthread_mutex*,struct timespec const*) ; 

__attribute__((used)) static inline int
FUNC9(struct pthread_mutex *m, const struct timespec *abstime,
    bool cvattach, bool rb_onlist)
{
	struct pthread *curthread;
	int ret, robust;

	robust = 0;  /* pacify gcc */
	curthread  = FUNC3();
	if (!cvattach && m->m_flags & PMUTEX_FLAG_PRIVATE)
		FUNC0(curthread);
	if (!rb_onlist)
		robust = FUNC4(curthread, m);
	ret = FUNC6(&m->m_lock, FUNC2(curthread));
	if (ret == 0 || ret == EOWNERDEAD) {
		FUNC7(curthread, m, ret);
		if (ret == EOWNERDEAD)
			m->m_lock.m_flags |= UMUTEX_NONCONSISTENT;
	} else {
		ret = FUNC8(curthread, m, abstime);
	}
	if (!rb_onlist && robust)
		FUNC5(curthread, m);
	if (ret != 0 && ret != EOWNERDEAD &&
	    (m->m_flags & PMUTEX_FLAG_PRIVATE) != 0 && !cvattach)
		FUNC1(curthread);
	return (ret);
}
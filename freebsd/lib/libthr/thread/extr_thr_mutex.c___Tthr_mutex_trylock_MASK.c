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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  m_flags; } ;
struct pthread_mutex {int m_flags; TYPE_1__ m_lock; } ;
struct pthread {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int EOWNERDEAD ; 
 int PMUTEX_FLAG_PRIVATE ; 
 scalar_t__ FUNC0 (struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 scalar_t__ FUNC3 (struct pthread*) ; 
 int /*<<< orphan*/  UMUTEX_NONCONSISTENT ; 
 scalar_t__ FUNC4 (int) ; 
 struct pthread* FUNC5 () ; 
 int FUNC6 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,struct pthread_mutex*) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct pthread_mutex**) ; 
 int /*<<< orphan*/  FUNC10 (struct pthread*,struct pthread_mutex*,int) ; 
 int FUNC11 (struct pthread_mutex*) ; 

int
FUNC12(pthread_mutex_t *mutex)
{
	struct pthread *curthread;
	struct pthread_mutex *m;
	uint32_t id;
	int ret, robust;

	ret = FUNC9(mutex, &m);
	if (ret != 0)
		return (ret);
	curthread = FUNC5();
	id = FUNC3(curthread);
	if (m->m_flags & PMUTEX_FLAG_PRIVATE)
		FUNC1(curthread);
	robust = FUNC6(curthread, m);
	ret = FUNC8(&m->m_lock, id);
	if (FUNC4(ret == 0) || ret == EOWNERDEAD) {
		FUNC10(curthread, m, ret);
		if (ret == EOWNERDEAD)
			m->m_lock.m_flags |= UMUTEX_NONCONSISTENT;
	} else if (FUNC0(m) == id) {
		ret = FUNC11(m);
	} /* else {} */
	if (robust)
		FUNC7(curthread, m);
	if (ret != 0 && ret != EOWNERDEAD &&
	    (m->m_flags & PMUTEX_FLAG_PRIVATE) != 0)
		FUNC2(curthread);
	return (ret);
}
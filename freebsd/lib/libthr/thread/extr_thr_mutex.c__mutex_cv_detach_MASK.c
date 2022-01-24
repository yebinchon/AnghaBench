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
struct pthread_mutex {int m_count; int m_flags; } ;
struct pthread {scalar_t__ nwaiter_defer; int /*<<< orphan*/  defer_waiters; } ;

/* Variables and functions */
 int PMUTEX_FLAG_DEFERRED ; 
 struct pthread* FUNC0 () ; 
 int FUNC1 (struct pthread*,struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,struct pthread_mutex*) ; 

int
FUNC4(struct pthread_mutex *mp, int *recurse)
{
	struct pthread *curthread;
	int deferred, error;

	curthread = FUNC0();
	if ((error = FUNC1(curthread, mp)) != 0)
		return (error);

	/*
	 * Clear the count in case this is a recursive mutex.
	 */
	*recurse = mp->m_count;
	mp->m_count = 0;
	FUNC3(curthread, mp);

	/* Will this happen in real-world ? */
        if ((mp->m_flags & PMUTEX_FLAG_DEFERRED) != 0) {
		deferred = 1;
		mp->m_flags &= ~PMUTEX_FLAG_DEFERRED;
	} else
		deferred = 0;

	if (deferred)  {
		FUNC2(curthread->defer_waiters,
		    curthread->nwaiter_defer);
		curthread->nwaiter_defer = 0;
	}
	return (0);
}
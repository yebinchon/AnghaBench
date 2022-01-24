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
struct pthread_mutex {int /*<<< orphan*/  m_lock; } ;
struct pthread {uintptr_t inact_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread_mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*) ; 

int
FUNC4(struct pthread *curthread, struct pthread_mutex *m)
{

#if defined(_PTHREADS_INVARIANTS)
	if (__predict_false(curthread->inact_mtx != 0))
		PANIC("inact_mtx enter");
#endif
	if (!FUNC2(m))
		return (0);

	FUNC3(curthread);
	curthread->inact_mtx = (uintptr_t)&m->m_lock;
	return (1);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pthread {int dummy; } ;
typedef  TYPE_1__* pthread_t ;
struct TYPE_6__ {int cancel_pending; scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ PS_DEAD ; 
 int /*<<< orphan*/  SIGCANCEL ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,TYPE_1__*) ; 
 struct pthread* FUNC1 () ; 
 int FUNC2 (struct pthread*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(pthread_t pthread)
{
	struct pthread *curthread = FUNC1();
	int ret;

	/*
	 * POSIX says _pthread_cancel should be async cancellation safe.
	 * _thr_find_thread and THR_THREAD_UNLOCK will enter and leave critical
	 * region automatically.
	 */
	if ((ret = FUNC2(curthread, pthread, 0)) == 0) {
		if (!pthread->cancel_pending) {
			pthread->cancel_pending = 1;
			if (pthread->state != PS_DEAD)
				FUNC3(pthread, SIGCANCEL);
		}
		FUNC0(curthread, pthread);
	}
	return (ret);
}
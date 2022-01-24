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
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
struct TYPE_2__ {int sched_policy; int /*<<< orphan*/  prio; } ;
struct pthread {TYPE_1__ attr; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 struct pthread* FUNC2 () ; 
 int FUNC3 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 

int
FUNC4(pthread_t pthread, int * __restrict policy, 
    struct sched_param * __restrict param)
{
	struct pthread *curthread = FUNC2();
	int ret = 0;

	if (policy == NULL || param == NULL)
		return (EINVAL);

	/*
	 * Avoid searching the thread list when it is the current
	 * thread.
	 */
	if (pthread == curthread)
		FUNC0(curthread);
	else if ((ret = FUNC3(curthread, pthread, /*include dead*/0)))
		return (ret);
	*policy = pthread->attr.sched_policy;
	param->sched_priority = pthread->attr.prio;
	FUNC1(curthread, pthread);
	return (ret);
}
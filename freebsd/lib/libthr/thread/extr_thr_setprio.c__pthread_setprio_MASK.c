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
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {scalar_t__ sched_policy; int prio; } ;
struct pthread {TYPE_1__ attr; int /*<<< orphan*/  tid; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 scalar_t__ SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 struct pthread* FUNC2 () ; 
 int FUNC3 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct sched_param*) ; 
 int errno ; 

int
FUNC5(pthread_t pthread, int prio)
{
	struct pthread	*curthread = FUNC2();
	struct sched_param	param;
	int	ret;

	param.sched_priority = prio;
	if (pthread == curthread)
		FUNC0(curthread);
	else if ((ret = FUNC3(curthread, pthread, /*include dead*/0)))
		return (ret);
	if (pthread->attr.sched_policy == SCHED_OTHER ||
	    pthread->attr.prio == prio) {
		pthread->attr.prio = prio;
		ret = 0;
	} else {
		ret = FUNC4(pthread->tid,
			pthread->attr.sched_policy, &param);
		if (ret == -1)
			ret = errno;
		else
			pthread->attr.prio = prio;
	}
	FUNC1(curthread, pthread);
	return (ret);
}
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
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int errno ; 

int
FUNC1(pthread_t pthread)
{
	int policy, ret;
	struct sched_param param;

	if ((ret = FUNC0(pthread, &policy, &param)) == 0)
		ret = param.sched_priority;
	else {
		/* Invalid thread: */
		errno = ret;
		ret = -1;
	}

	/* Return the thread priority or an error status: */
	return (ret);
}
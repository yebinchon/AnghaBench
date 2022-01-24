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
typedef  TYPE_1__* pthread_attr_t ;
typedef  char cpuset_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpusetsize; int /*<<< orphan*/ * cpuset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,size_t) ; 

int
FUNC4(const pthread_attr_t *pattr, size_t cpusetsize,
	cpuset_t *cpusetp)
{
	pthread_attr_t attr;
	int ret = 0;

	if (pattr == NULL || (attr = (*pattr)) == NULL)
		ret = EINVAL;
	else {
		/* Kernel rejects small set, we check it here too. */ 
		size_t kern_size = FUNC1();
		if (cpusetsize < kern_size)
			return (ERANGE);
		if (attr->cpuset != NULL)
			FUNC2(cpusetp, attr->cpuset, FUNC0(cpusetsize,
			   attr->cpusetsize));
		else
			FUNC3(cpusetp, -1, kern_size);
		if (cpusetsize > kern_size)
			FUNC3(((char *)cpusetp) + kern_size, 0, 
				cpusetsize - kern_size);
	}
	return (ret);
}
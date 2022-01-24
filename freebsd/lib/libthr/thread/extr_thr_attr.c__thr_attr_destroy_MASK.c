#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {struct TYPE_4__* cpuset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

int
FUNC1(pthread_attr_t *attr)
{
	int	ret;

	/* Check for invalid arguments: */
	if (attr == NULL || *attr == NULL)
		/* Invalid argument: */
		ret = EINVAL;
	else {
		if ((*attr)->cpuset != NULL)
			FUNC0((*attr)->cpuset);
		/* Free the memory allocated to the attribute object: */
		FUNC0(*attr);

		/*
		 * Leave the attribute pointer NULL now that the memory
		 * has been freed:
		 */
		*attr = NULL;
		ret = 0;
	}
	return(ret);
}
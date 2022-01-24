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
struct pthread {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 int FUNC2 (struct pthread*,struct pthread*,int) ; 

int
FUNC3(struct pthread *curthread, struct pthread *thread,
    int include_dead)
{
	int ret;

	if (thread == NULL)
		/* Invalid thread: */
		return (EINVAL);

	if ((ret = FUNC2(curthread, thread, include_dead)) == 0) {
		thread->refcount++;
		FUNC0(curthread);
		FUNC1(curthread, thread);
	}

	/* Return zero if the thread exists: */
	return (ret);
}
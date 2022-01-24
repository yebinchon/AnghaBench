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
struct pthread {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ ) ; 
 struct pthread* FUNC1 () ; 
 int FUNC2 (struct pthread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(pthread_t thread)
{
	struct pthread *curthread = FUNC1();
	int ret;

	/* Add a reference to the thread: */
	if ((ret = FUNC2(curthread, thread, /*include dead*/0)) == 0) {
		/* Lock the threads scheduling queue: */
		FUNC3(thread);
		FUNC0(curthread, thread);
	}
	return (ret);
}
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
typedef  int /*<<< orphan*/  ub_thread_type ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 

void 
FUNC6(ub_thread_type* thr, void* (*func)(void*), void* arg)
{
	pid_t pid = FUNC2();
	switch(pid) {
	default:	/* main */
			*thr = (ub_thread_type)pid;
			return;
	case 0: 	/* child */
			*thr = (ub_thread_type)FUNC3();
			(void)(*func)(arg);
			FUNC0(0);
	case -1:	/* error */
			FUNC1("could not fork: %s", FUNC4(errno));
	}
}
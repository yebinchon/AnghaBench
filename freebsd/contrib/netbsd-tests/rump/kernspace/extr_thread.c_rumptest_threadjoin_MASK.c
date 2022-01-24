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
struct lwp {int dummy; } ;

/* Variables and functions */
 int KTHREAD_MPSAFE ; 
 int KTHREAD_MUSTJOIN ; 
 int /*<<< orphan*/  PRI_NONE ; 
 int /*<<< orphan*/  jointhread ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lwp**,char*) ; 
 int FUNC1 (struct lwp*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int testit ; 

void
FUNC3()
{
	struct lwp *newl;
	int rv;

	rv = FUNC0(PRI_NONE, KTHREAD_MUSTJOIN | KTHREAD_MPSAFE, NULL,
	    jointhread, NULL, &newl, "jointest");
	if (rv)
		FUNC2("thread creation failed: %d", rv);
	rv = FUNC1(newl);
	if (rv)
		FUNC2("thread join failed: %d", rv);

	if (testit != 1)
		FUNC2("new thread did not run");
}
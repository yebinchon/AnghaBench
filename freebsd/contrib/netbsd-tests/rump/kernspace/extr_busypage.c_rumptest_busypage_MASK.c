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
struct lwp {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmobjlock; } ;

/* Variables and functions */
 int KTHREAD_MPSAFE ; 
 int KTHREAD_MUSTJOIN ; 
 int /*<<< orphan*/  PRI_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lwp**,char*) ; 
 int FUNC3 (struct lwp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  tcv ; 
 int /*<<< orphan*/ * testpg ; 
 int /*<<< orphan*/  thread ; 
 int /*<<< orphan*/  threadrun ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* uobj ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC10()
{
	struct lwp *newl;
	int rv;

	FUNC0(&tcv, "napina");

	uobj = FUNC7(1, 0);
	FUNC4(uobj->vmobjlock);
	testpg = FUNC9(uobj, 0, NULL, 0);
	FUNC5(uobj->vmobjlock);
	if (testpg == NULL)
		FUNC6("couldn't create vm page");

	rv = FUNC2(PRI_NONE, KTHREAD_MUSTJOIN | KTHREAD_MPSAFE, NULL,
	    thread, NULL, &newl, "jointest");
	if (rv)
		FUNC6("thread creation failed: %d", rv);

	FUNC4(uobj->vmobjlock);
	while (!threadrun)
		FUNC1(&tcv, uobj->vmobjlock);

	FUNC8(&testpg, 1);
	FUNC5(uobj->vmobjlock);

	rv = FUNC3(newl);
	if (rv)
		FUNC6("thread join failed: %d", rv);

}
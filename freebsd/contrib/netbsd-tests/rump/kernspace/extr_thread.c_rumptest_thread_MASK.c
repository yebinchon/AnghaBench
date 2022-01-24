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
 int /*<<< orphan*/  IPL_NONE ; 
 int /*<<< orphan*/  KTHREAD_MPSAFE ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  PRI_NONE ; 
 int /*<<< orphan*/  cv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lwp**,char*) ; 
 int /*<<< orphan*/  mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  thethread ; 
 scalar_t__ value ; 

void
FUNC8()
{
	struct lwp *newl;
	int rv;

	FUNC6(&mtx, MUTEX_DEFAULT, IPL_NONE);
	FUNC0(&cv, "jooei");
	rv = FUNC3(PRI_NONE, KTHREAD_MPSAFE, NULL,
	    thethread, NULL, &newl, "ktest");
	if (rv)
		FUNC7("thread creation failed: %d", rv);

	FUNC4(&mtx);
	while (value == 0)
		FUNC1(&cv, &mtx);
	FUNC5(&mtx);

	/* try to verify thread really exists and we don't crash */
	FUNC2("take1", false, 1, NULL);
}
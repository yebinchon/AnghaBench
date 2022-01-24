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
 int KTHREAD_MPSAFE ; 
 int KTHREAD_MUSTJOIN ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int NTHREADS ; 
 int /*<<< orphan*/  PRI_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,struct lwp**,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lwp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mymtx ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  tinythread ; 

void
FUNC4()
{
	struct lwp *notbigl[NTHREADS];
	int rv, i;

	FUNC2(&mymtx, MUTEX_DEFAULT, IPL_NONE);

	for (i = 0; i < NTHREADS; i++) {
		rv = FUNC0(PRI_NONE, KTHREAD_MUSTJOIN| KTHREAD_MPSAFE,
		    NULL, tinythread, (void *)(uintptr_t)i, &notbigl[i], "nb");
		if (rv)
			FUNC3("thread create failed: %d", rv);
	}

	for (i = 0; i < NTHREADS; i++) {
		FUNC1(notbigl[i]);
	}
}
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

/* Variables and functions */
 int /*<<< orphan*/  IPL_NONE ; 
 int /*<<< orphan*/  KTHREAD_MPSAFE ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  PRI_NONE ; 
 int /*<<< orphan*/  PR_NOWAIT ; 
 int /*<<< orphan*/  PR_WAITOK ; 
 int FUNC0 (char**) ; 
 scalar_t__ curstat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hthr ; 
 int /*<<< orphan*/  kcv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pool_allocator_nointr ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pp1 ; 
 int /*<<< orphan*/  pp2 ; 
 char** store ; 

void
FUNC11(size_t thelimit)
{
	char *c;
	int succ, i;

	FUNC7(&mtx, MUTEX_DEFAULT, IPL_NONE);
	FUNC1(&kcv, "venailu");

	FUNC4(PRI_NONE, KTHREAD_MPSAFE, NULL, hthr, NULL, NULL, "h");

	FUNC10(&pp1, 1024, 0, 0, 0, "vara-allas",
	    &pool_allocator_nointr, IPL_NONE);
	FUNC10(&pp2, 1024, 0, 0, 0, "allas",
	    &pool_allocator_nointr, IPL_NONE);
	
	for (i = 0; i < FUNC0(store); i++) {
		store[i] = FUNC9(&pp1, PR_NOWAIT);
		if (store[i] == NULL) {
			FUNC8("pool_get store failed");
		}
	}

	/* wait until other thread runs */
	FUNC5(&mtx);
	while (curstat == 0)
		FUNC3(&kcv, &mtx);
	FUNC6(&mtx);

	for (succ = 0;; succ++) {
		if (succ * 1024 > thelimit)
			FUNC8("managed to allocate over limit");
		if ((c = FUNC9(&pp2, PR_NOWAIT)) == NULL) {
			FUNC5(&mtx);
			curstat++;
			FUNC2(&kcv);
			FUNC6(&mtx);
			if (FUNC9(&pp2, PR_WAITOK) == NULL)
				FUNC8("pool get PR_WAITOK failed");
			break;
		}
		*c = 'a';
	}
}
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
struct kinfo_proc2 {int p_nlwps; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int NTHR ; 
 int P1_0 ; 
 int P1_1 ; 
 int P2_0 ; 
 int P2_1 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 
 int canreturn ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kinfo_proc2*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int*,int) ; 
 int FUNC14 (char*,char**,char**) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  wrk ; 

int
FUNC18(int argc, char *argv[], char *envp[])
{
	struct kinfo_proc2 p;
	char *execarg[3];
	int p1[2], p2[2];
	pid_t mypid;
	pthread_t pt;
	ssize_t n;
	int i, execd;
	char nexec[16];

	if (argc > 1)
		execd = FUNC1(argv[1]);
	else
		execd = 0;
	FUNC16(nexec, "%d", execd+1);
	FUNC0("execd: %d\n", execd);

	if (FUNC15() == -1) {
		if (execd)
			FUNC2(1, "init execd");
		else
			FUNC2(1, "init");
	}
	mypid = FUNC10();
	FUNC0("rumpclient_init finished.\n");

	if (execd) {
		canreturn = 1;
		errno = FUNC6(&pt, NULL,
		    wrk, (void *)(uintptr_t)P2_0);
		if (errno != 0)
			FUNC2(1, "exec pthread_create");
		FUNC0("startup pthread_create finished.\n");

		i = 37;
		FUNC13(P2_1, &i, sizeof(i));
		FUNC7(pt, NULL);
		FUNC0("startup pthread_join finished.\n");

		n = FUNC12(P1_0, &i, sizeof(i));
		if (n != -1 || errno != EBADF)
			FUNC3(1, "post-exec cloexec works");
		FUNC0("startup rump_sys_read finished.\n");

		FUNC5(mypid, &p);
		FUNC0("startup getproc finished.\n");
		if (p.p_nlwps != 2)
			FUNC3(1, "invalid nlwps: %lld", (long long)p.p_nlwps);

		/* we passed? */
		if (execd > 10) {
			FUNC0("done.\n");
			FUNC4(0);
		}

		FUNC8(P2_0);
		FUNC8(P2_1);
	}

	FUNC0("making pipes...\n");

	if (FUNC11(p1) == -1)
		FUNC2(1, "pipe1");
	if (p1[0] != P1_0 || p1[1] != P1_1)
		FUNC3(1, "p1 assumptions failed %d %d", p1[0], p1[1]);
	if (FUNC11(p2) == -1)
		FUNC2(1, "pipe1");
	if (p2[0] != P2_0 || p2[1] != P2_1)
		FUNC3(1, "p2 assumptions failed");
	if (FUNC9(p1[0], F_SETFD, FD_CLOEXEC) == -1)
		FUNC2(1, "cloexec");
	if (FUNC9(p1[1], F_SETFD, FD_CLOEXEC) == -1)
		FUNC2(1, "cloexec");

	FUNC0("making threads...\n");

	for (i = 0; i < NTHR; i++) {
		errno = FUNC6(&pt, NULL,
		    wrk, (void *)(uintptr_t)p1[0]);
		if (errno != 0)
			FUNC2(1, "pthread_create 1 %d", i);
	}

	for (i = 0; i < NTHR; i++) {
		errno = FUNC6(&pt, NULL,
		    wrk, (void *)(uintptr_t)p2[0]);
		if (errno != 0)
			FUNC2(1, "pthread_create 2 %d", i);
	}

	FUNC0("waiting for threads to start...\n");

	/* wait for all the threads to be enjoying themselves */
	for (;;) {
		FUNC5(mypid, &p);
		FUNC0("getproc finished.\n");
		if (p.p_nlwps == 2*NTHR + 2)
			break;
		FUNC17(10000);
	}

	FUNC0("making some more threads start...\n");

	/*
	 * load up one more (big) set.  these won't start executing, though,
	 * but we're interested in if they create blockage
	 */
	for (i = 0; i < 3*NTHR; i++) {
		errno = FUNC6(&pt, NULL,
		    wrk, (void *)(uintptr_t)p1[0]);
		if (errno != 0)
			FUNC2(1, "pthread_create 3 %d", i);
	}

	FUNC0("calling exec...\n");

	/* then, we exec! */
	execarg[0] = argv[0];
	execarg[1] = nexec;
	execarg[2] = NULL;
	if (FUNC14(argv[0], execarg, envp) == -1)
		FUNC2(1, "exec");
}
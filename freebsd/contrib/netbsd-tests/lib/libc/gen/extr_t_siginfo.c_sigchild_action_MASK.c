#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long si_signo; unsigned long si_errno; unsigned long si_code; unsigned long si_uid; unsigned long si_pid; unsigned long si_status; scalar_t__ si_stime; scalar_t__ si_utime; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  child ; 
 int /*<<< orphan*/  code ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  status ; 

__attribute__((used)) static void
FUNC9(int signo, siginfo_t *info, void *ptr)
{
	if (info != NULL) {
		FUNC8("info=%p\n", info);
		FUNC8("ptr=%p\n", ptr);
		FUNC8("si_signo=%d\n", info->si_signo);
		FUNC8("si_errno=%d\n", info->si_errno);
		FUNC8("si_code=%d\n", info->si_code);
		FUNC8("si_uid=%d\n", info->si_uid);
		FUNC8("si_pid=%d\n", info->si_pid);
		FUNC8("si_status=%d\n", info->si_status);
#ifdef __NetBSD__
		printf("si_utime=%lu\n", (unsigned long int)info->si_utime);
		printf("si_stime=%lu\n", (unsigned long int)info->si_stime);
#endif
	}
	FUNC0(info->si_code, code);
	FUNC0(info->si_signo, SIGCHLD);
	FUNC0(info->si_uid, FUNC7());
	FUNC0(info->si_pid, child);
	if (FUNC2(info->si_status))
		FUNC0(FUNC1(info->si_status), status);
	else if (FUNC4(info->si_status))
		FUNC0(FUNC5(info->si_status), status);
	else if (FUNC3(info->si_status))
		FUNC0(FUNC6(info->si_status), status);
}
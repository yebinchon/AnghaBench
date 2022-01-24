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
#define  SIGALRM 134 
#define  SIGBUS 133 
#define  SIGFPE 132 
#define  SIGHUP 131 
#define  SIGSEGV 130 
#define  SIGTERM 129 
#define  SIGTRAP 128 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  X_REWRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pipeout ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC7(int signo)
{
	switch(signo) {
	case SIGALRM:
	case SIGBUS:
	case SIGFPE:
	case SIGHUP:
	case SIGTERM:
	case SIGTRAP:
		if (pipeout)
			FUNC5("Signal on pipe: cannot recover\n");
		FUNC4("Rewriting attempted as response to unknown signal.\n");
		(void)FUNC2(stderr);
		(void)FUNC2(stdout);
		FUNC0();
		FUNC1(X_REWRITE);
		/* NOTREACHED */
	case SIGSEGV:
		FUNC4("SIGSEGV: ABORTING!\n");
		(void)FUNC6(SIGSEGV, SIG_DFL);
		(void)FUNC3(0, SIGSEGV);
		/* NOTREACHED */
	}
}
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
typedef  int /*<<< orphan*/  time_t ;
struct rt_msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EX_USAGE ; 
#define  K_FIB 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ debugonly ; 
 int defaultfib ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*) ; 
 int numfibs ; 
 int /*<<< orphan*/  FUNC5 (struct rt_msghdr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  s ; 
 int FUNC8 (int) ; 
 int FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int verbose ; 

__attribute__((used)) static void
FUNC12(int argc, char *argv[])
{
	int n, fib, error;
	char msg[2048], *endptr;

	fib = defaultfib;
	while (argc > 1) {
		argc--;
		argv++;
		if (**argv != '-')
			FUNC11(*argv);
		switch (FUNC4(*argv + 1)) {
		case K_FIB:
			if (!--argc)
				FUNC11(*argv);
			errno = 0;
			fib = FUNC9(*++argv, &endptr, 0);
			if (errno == 0) {
				if (*endptr != '\0' ||
				    fib < 0 ||
				    (numfibs != -1 && fib > numfibs - 1))
					errno = EINVAL;
			}
			if (errno)
				FUNC1(EX_USAGE, "invalid fib number: %s", *argv);
			break;
		default:
			FUNC11(*argv);
		}
	}
	error = FUNC8(fib);
	if (error)
		FUNC1(EX_USAGE, "invalid fib number: %d", fib);

	verbose = 1;
	if (debugonly) {
		FUNC3();
		FUNC2(0);
	}
	for (;;) {
		time_t now;
		n = FUNC7(s, msg, 2048);
		now = FUNC10(NULL);
		(void)FUNC6("\ngot message of size %d on %s", n, FUNC0(&now));
		FUNC5((struct rt_msghdr *)(void *)msg, n);
	}
}
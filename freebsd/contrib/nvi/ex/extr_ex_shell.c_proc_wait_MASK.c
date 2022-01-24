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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 scalar_t__ SIGPIPE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char const) ; 
 scalar_t__ errno ; 
 char* FUNC8 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 size_t FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC13(SCR *sp, long int pid, const char *cmd, int silent, int okpipe)
{
	size_t len;
	int nf, pstat;
	char *p;

	/* Wait for the utility, ignoring interruptions. */
	for (;;) {
		errno = 0;
		if (FUNC12((pid_t)pid, &pstat, 0) != -1)
			break;
		if (errno != EINTR) {
			FUNC9(sp, M_SYSERR, "waitpid");
			return (1);
		}
	}

	/*
	 * Display the utility's exit status.  Ignore SIGPIPE from the
	 * parent-writer, as that only means that the utility chose to
	 * exit before reading all of its input.
	 */
	if (FUNC5(pstat) && (!okpipe || FUNC6(pstat) != SIGPIPE)) {
		for (; FUNC7(*cmd); ++cmd);
		p = FUNC8(sp, cmd, &nf);
		len = FUNC11(p);
		FUNC9(sp, M_ERR, "%.*s%s: received signal: %s%s",
		    (int)FUNC1(len, 20), p, len > 20 ? " ..." : "",
		    FUNC10(FUNC6(pstat)),
		    FUNC2(pstat) ? "; core dumped" : "");
		if (nf)
			FUNC0(sp, p, 0);
		return (1);
	}

	if (FUNC4(pstat) && FUNC3(pstat)) {
		/*
		 * Remain silent for "normal" errors when doing shell file
		 * name expansions, they almost certainly indicate nothing
		 * more than a failure to match.
		 *
		 * Remain silent for vi read filter errors.  It's historic
		 * practice.
		 */
		if (!silent) {
			for (; FUNC7(*cmd); ++cmd);
			p = FUNC8(sp, cmd, &nf);
			len = FUNC11(p);
			FUNC9(sp, M_ERR, "%.*s%s: exited with status %d",
			    (int)FUNC1(len, 20), p, len > 20 ? " ..." : "",
			    FUNC3(pstat));
			if (nf)
				FUNC0(sp, p, 0);
		}
		return (1);
	}
	return (0);
}
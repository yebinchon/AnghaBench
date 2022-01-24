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

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,char const*,size_t,int,int) ; 
 int FUNC9 (int,char const*,char const*,size_t,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(const char *host, const char *port, size_t n, bool conn, bool bug)
{
	pid_t pid;
	int status;
	int syncfds[2];
	int error;

	if (FUNC10(AF_UNIX, SOCK_STREAM, 0, syncfds) == -1)
		FUNC0(EXIT_FAILURE, "socketpair (%s)", FUNC11(errno));

	switch ((pid = FUNC6())) {
	case 0:
		FUNC8(syncfds[0], host, port, n, conn, bug);
		return;
	case -1:
		FUNC0(EXIT_FAILURE, "fork (%s)", FUNC11(errno));
	default:
		error = FUNC9(syncfds[1], host, port, n, conn, bug);
	again:
		switch (FUNC13(pid, &status, WNOHANG)) {
		case -1:
			FUNC0(EXIT_FAILURE, "wait (%s)", FUNC11(errno));
		case 0:
			if (error == 0)
				/*
				 * Receiver is still alive, but we know
				 * it will exit soon.
				 */
				goto again;

			if (FUNC7(pid, SIGTERM) == -1)
				FUNC0(EXIT_FAILURE, "kill (%s)",
				    FUNC11(errno));
			goto again;
		default:
			if (FUNC4(status)) {
				if (FUNC5(status) == SIGTERM)
					FUNC1(EXIT_FAILURE,
					    "receiver failed and was killed" \
					    "by sender");
				else
					FUNC0(EXIT_FAILURE,
					    "receiver got signaled (%s)",
					    FUNC12(FUNC5(status)));
			} else if (FUNC3(status)) {
				if (FUNC2(status) != 0)
					FUNC0(EXIT_FAILURE,
					    "receiver exited with status %d",
					    FUNC2(status));
			} else {
				FUNC0(EXIT_FAILURE,
				    "receiver exited with unexpected status %d",
				    status);
			}
			break;
		}
		return;
	}
}
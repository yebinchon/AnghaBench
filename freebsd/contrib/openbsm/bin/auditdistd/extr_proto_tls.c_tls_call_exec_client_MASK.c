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
struct proto_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  F_SETFD ; 
 scalar_t__ PJDLOG_MODE_STD ; 
 int TLS_DEFAULT_TIMEOUT ; 
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct proto_conn*) ; 
 int FUNC9 (struct proto_conn*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct proto_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct proto_conn *sock, const char *srcaddr,
    const char *dstaddr, int timeout)
{
	char *timeoutstr, *startfdstr, *debugstr;
	int startfd;

	/* Declare that we are receiver. */
	FUNC11(sock, NULL, 0);

	if (FUNC7() == PJDLOG_MODE_STD)
		startfd = 3;
	else /* if (pjdlog_mode_get() == PJDLOG_MODE_SYSLOG) */
		startfd = 0;

	if (FUNC9(sock) != startfd) {
		/* Move socketpair descriptor to descriptor number startfd. */
		if (FUNC2(FUNC9(sock), startfd) == -1)
			FUNC6(EX_OSERR, "dup2() failed");
		FUNC8(sock);
	} else {
		/*
		 * The FD_CLOEXEC is cleared by dup2(2), so when we not
		 * call it, we have to clear it by hand in case it is set.
		 */
		if (FUNC4(startfd, F_SETFD, 0) == -1)
			FUNC6(EX_OSERR, "fcntl() failed");
	}

	FUNC1(startfd + 1);

	if (FUNC0(&startfdstr, "%d", startfd) == -1)
		FUNC6(EX_TEMPFAIL, "asprintf() failed");
	if (timeout == -1)
		timeout = TLS_DEFAULT_TIMEOUT;
	if (FUNC0(&timeoutstr, "%d", timeout) == -1)
		FUNC6(EX_TEMPFAIL, "asprintf() failed");
	if (FUNC0(&debugstr, "%d", FUNC5()) == -1)
		FUNC6(EX_TEMPFAIL, "asprintf() failed");

	FUNC3(FUNC10("execpath"), FUNC10("execpath"), "proto", "tls",
	    FUNC10("user"), "client", startfdstr,
	    srcaddr == NULL ? "" : srcaddr, dstaddr,
	    FUNC10("tls:fingerprint"), FUNC10("tcp:port"), timeoutstr,
	    debugstr, NULL);
	FUNC6(EX_SOFTWARE, "execl() failed");
}
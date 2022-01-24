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
 int FUNC0 (int,int) ; 
 scalar_t__ PJDLOG_MODE_STD ; 
 int FUNC1 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct proto_conn*) ; 
 int FUNC11 (struct proto_conn*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct proto_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct proto_conn *sock, struct proto_conn *tcp)
{
	int startfd, sockfd, tcpfd, safefd;
	char *startfdstr, *debugstr;

	if (FUNC9() == PJDLOG_MODE_STD)
		startfd = 3;
	else /* if (pjdlog_mode_get() == PJDLOG_MODE_SYSLOG) */
		startfd = 0;

	/* Declare that we are receiver. */
	FUNC13(sock, NULL, 0);

	sockfd = FUNC11(sock);
	tcpfd = FUNC11(tcp);

	safefd = FUNC0(sockfd, tcpfd);
	safefd = FUNC0(safefd, startfd);
	safefd++;

	/* Move sockfd and tcpfd to safe numbers first. */
	if (FUNC4(sockfd, safefd) == -1)
		FUNC8(EX_OSERR, "dup2() failed");
	FUNC10(sock);
	sockfd = safefd;
	if (FUNC4(tcpfd, safefd + 1) == -1)
		FUNC8(EX_OSERR, "dup2() failed");
	FUNC10(tcp);
	tcpfd = safefd + 1;

	/* Move socketpair descriptor to descriptor number startfd. */
	if (FUNC4(sockfd, startfd) == -1)
		FUNC8(EX_OSERR, "dup2() failed");
	(void)FUNC2(sockfd);
	/* Move tcp descriptor to descriptor number startfd + 1. */
	if (FUNC4(tcpfd, startfd + 1) == -1)
		FUNC8(EX_OSERR, "dup2() failed");
	(void)FUNC2(tcpfd);

	FUNC3(startfd + 2);

	/*
	 * Even if FD_CLOEXEC was set on descriptors before dup2(), it should
	 * have been cleared on dup2(), but better be safe than sorry.
	 */
	if (FUNC6(startfd, F_SETFD, 0) == -1)
		FUNC8(EX_OSERR, "fcntl() failed");
	if (FUNC6(startfd + 1, F_SETFD, 0) == -1)
		FUNC8(EX_OSERR, "fcntl() failed");

	if (FUNC1(&startfdstr, "%d", startfd) == -1)
		FUNC8(EX_TEMPFAIL, "asprintf() failed");
	if (FUNC1(&debugstr, "%d", FUNC7()) == -1)
		FUNC8(EX_TEMPFAIL, "asprintf() failed");

	FUNC5(FUNC12("execpath"), FUNC12("execpath"), "proto", "tls",
	    FUNC12("user"), "server", startfdstr, FUNC12("tls:keyfile"),
	    FUNC12("tls:certfile"), debugstr, NULL);
	FUNC8(EX_SOFTWARE, "execl() failed");
}
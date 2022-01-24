#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ EINTR ; 
 scalar_t__ EISCONN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  ding ; 
 scalar_t__ errno ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC16(bool pacceptblock, bool fcntlblock)
{
	int srvr = -1, clnt = -1, as = -1;
	int ok, fl;
	ssize_t n;
	char buf[10];
	struct sockaddr_in sin, ba;
	struct sigaction sa;

	srvr = FUNC15(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, 0);
	if (srvr == -1)
		FUNC0("socket");

	FUNC10(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
#ifdef BSD4_4
	sin.sin_len = sizeof(sin);
#endif
	sin.sin_port = FUNC8(0);
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);
	ok = FUNC2(srvr, (const struct sockaddr *)&sin, (socklen_t)sizeof(sin));
	if (ok == -1)
		FUNC0("bind");

	socklen_t addrlen = sizeof(struct sockaddr_in);
	ok = FUNC6(srvr, (struct sockaddr *)&ba, &addrlen);
	if (ok == -1)
		FUNC0("getsockname");

	ok = FUNC9(srvr, SOMAXCONN);
	if (ok == -1)
		FUNC0("listen");

	clnt = FUNC15(AF_INET, SOCK_STREAM | SOCK_NONBLOCK, 0);
	if (clnt == -1)
		FUNC0("socket");

	/* may not connect first time */
	ok = FUNC4(clnt, (struct sockaddr *) &ba, addrlen);
	if (ok != -1 || errno != EINPROGRESS)
		FUNC0("expected connect to fail");
	as = FUNC11(srvr, NULL, NULL, NULL, pacceptblock ? 0 : SOCK_NONBLOCK);
	ok = FUNC4(clnt, (struct sockaddr *) &ba, addrlen);
	if (ok == -1 && errno != EISCONN)
		FUNC0("connect failed");

#if 0
	fl = fcntl(srvr, F_GETFL, 0);
	if (fl == -1)
		FAIL("fnctl getfl");

	ok = fcntl(srvr, F_SETFL, fl & ~O_NONBLOCK);
	if (ok == -1)
		FAIL("fnctl setfl");
#endif

	if (as == -1) {		/* not true under NetBSD */
		as = FUNC11(srvr, NULL, NULL, NULL, pacceptblock ? 0 : SOCK_NONBLOCK);
		if (as == -1)
			FUNC0("paccept");
	}
	if (fcntlblock) {
		fl = FUNC5(as, F_GETFL, 0);
		if (fl == -1)
			FUNC0("fnctl");
		if (fl != (O_RDWR|O_NONBLOCK))
			FUNC0("fl 0x%x != 0x%x\n", fl, O_RDWR|O_NONBLOCK);
		ok = FUNC5(as, F_SETFL, fl & ~O_NONBLOCK);
		if (ok == -1)
			FUNC0("fnctl setfl");

		fl = FUNC5(as, F_GETFL, 0);
		if (fl & O_NONBLOCK)
			FUNC0("fl non blocking after reset");
	}
	sa.sa_handler = ding;
	sa.sa_flags = 0;
	FUNC14(&sa.sa_mask);
	FUNC13(SIGALRM, &sa, NULL);
	FUNC1(1);
	n = FUNC12(as, buf, 10);

	if (pacceptblock || fcntlblock) {
		if (n == -1 && errno != EINTR)
			FUNC0("read");
	} else {
		if (n != -1 || errno != EWOULDBLOCK)
			FUNC0("read");
	}
	return;
fail:
	FUNC3(srvr);
	FUNC3(clnt);
	FUNC3(as);
}
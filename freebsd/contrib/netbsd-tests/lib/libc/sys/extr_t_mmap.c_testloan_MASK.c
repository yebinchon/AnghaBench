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
typedef  int /*<<< orphan*/  val ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BUFSIZE ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,char,int) ; 
 int page ; 
 int FUNC7 (int,char*,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int,char*,int) ; 

void
FUNC11(void *vp, void *vp2, char pat, int docheck)
{
	char buf[BUFSIZE];
	char backup[BUFSIZE];
	ssize_t nwritten;
	ssize_t nread;
	int fds[2];
	int val;

	val = BUFSIZE;

	if (docheck != 0)
		(void)FUNC5(backup, vp, BUFSIZE);

	if (FUNC9(AF_LOCAL, SOCK_STREAM, PF_UNSPEC, fds) != 0)
		FUNC1("socketpair() failed");

	val = BUFSIZE;

	if (FUNC8(fds[1], SOL_SOCKET, SO_RCVBUF, &val, sizeof(val)) != 0)
		FUNC1("setsockopt() failed, SO_RCVBUF");

	val = BUFSIZE;

	if (FUNC8(fds[0], SOL_SOCKET, SO_SNDBUF, &val, sizeof(val)) != 0)
		FUNC1("setsockopt() failed, SO_SNDBUF");

	if (FUNC3(fds[0], F_SETFL, O_NONBLOCK) != 0)
		FUNC1("fcntl() failed");

	nwritten = FUNC10(fds[0], (char *)vp + page, BUFSIZE - page);

	if (nwritten == -1)
		FUNC1("write() failed");

	/* Break loan. */
	(void)FUNC6(vp2, pat, BUFSIZE);

	nread = FUNC7(fds[1], buf + page, BUFSIZE - page);

	if (nread == -1)
		FUNC1("read() failed");

	if (nread != nwritten)
		FUNC1("too short read");

	if (docheck != 0 && FUNC4(backup, buf + page, nread) != 0)
		FUNC1("data mismatch");

	FUNC0(FUNC2(fds[0]) == 0);
	FUNC0(FUNC2(fds[1]) == 0);
}
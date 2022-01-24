#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_8__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_9__ {scalar_t__ l4_last; int l4_fd; int l4_rw; struct TYPE_9__* l4_next; scalar_t__ l4_wlen; TYPE_1__ l4_sin; } ;
typedef  TYPE_2__ l4cfg_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int OPT_VERBOSE ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,...) ; 
 int FUNC6 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ ctimeout ; 
 scalar_t__ errno ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ frequency ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* l4list ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int opts ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ rtimeout ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

int FUNC19()
{
	int fd, opt, res, mfd, i;
	struct timeval tv;
	time_t now, now1;
	fd_set rfd, wfd;
	l4cfg_t *l4;

	mfd = 0;
	opt = 1;
	now = FUNC17(NULL);

	/*
	 * First, initiate connections that are closed, as required.
	 */
	for (l4 = l4list; l4; l4 = l4->l4_next) {
		if ((l4->l4_last + frequency < now) && (l4->l4_fd == -1)) {
			l4->l4_last = now;
			fd = FUNC16(AF_INET, SOCK_STREAM, 0);
			if (fd == -1)
				continue;
			FUNC15(fd, SOL_SOCKET, SO_REUSEADDR, &opt,
				   sizeof(opt));
#ifdef	O_NONBLOCK
			if ((res = fcntl(fd, F_GETFL, 0)) != -1)
				fcntl(fd, F_SETFL, res | O_NONBLOCK);
#endif
			if (opts & OPT_VERBOSE)
				FUNC9(stderr,
					"Connecting to %s,%d (fd %d)...",
					FUNC10(l4->l4_sin.sin_addr),
					FUNC11(l4->l4_sin.sin_port), fd);
			if (FUNC6(fd, (struct sockaddr *)&l4->l4_sin,
				    sizeof(l4->l4_sin)) == -1) {
				if (errno != EINPROGRESS) {
					if (opts & OPT_VERBOSE)
						FUNC9(stderr, "failed\n");
					FUNC12("connect");
					FUNC4(fd);
					fd = -1;
				} else {
					if (opts & OPT_VERBOSE)
						FUNC9(stderr, "waiting\n");
					l4->l4_rw = -2;
				}
			} else {
				if (opts & OPT_VERBOSE)
					FUNC9(stderr, "connected\n");
				FUNC7(l4);
			}
			l4->l4_fd = fd;
		}
	}

	/*
	 * Now look for fd's which we're expecting to read/write from.
	 */
	FUNC2(&rfd);
	FUNC2(&wfd);
	tv.tv_sec = FUNC3(rtimeout, ctimeout);
	tv.tv_usec = 0;

	for (l4 = l4list; l4; l4 = l4->l4_next)
		if (l4->l4_rw == 0) {
			if (now - l4->l4_last > rtimeout) {
				if (opts & OPT_VERBOSE)
					FUNC9(stderr, "%d: Read timeout\n",
						l4->l4_fd);
				FUNC5(l4, 1);
				continue;
			}
			if (opts & OPT_VERBOSE)
				FUNC9(stderr, "Wait for read on fd %d\n",
					l4->l4_fd);
			FUNC1(l4->l4_fd, &rfd);
			if (l4->l4_fd > mfd)
				mfd = l4->l4_fd;
		} else if ((l4->l4_rw == 1 && l4->l4_wlen) ||
			   l4->l4_rw == -2) {
			if ((l4->l4_rw == -2) &&
			    (now - l4->l4_last > ctimeout)) {
				if (opts & OPT_VERBOSE)
					FUNC9(stderr,
						"%d: connect timeout\n",
						l4->l4_fd);
				FUNC5(l4);
				continue;
			}
			if (opts & OPT_VERBOSE)
				FUNC9(stderr, "Wait for write on fd %d\n",
					l4->l4_fd);
			FUNC1(l4->l4_fd, &wfd);
			if (l4->l4_fd > mfd)
				mfd = l4->l4_fd;
		}

	if (opts & OPT_VERBOSE)
		FUNC9(stderr, "Select: max fd %d wait %d\n", mfd + 1,
			tv.tv_sec);
	i = FUNC14(mfd + 1, &rfd, &wfd, NULL, &tv);
	if (i == -1) {
		FUNC12("select");
		return -1;
	}

	now1 = FUNC17(NULL);

	for (l4 = l4list; (i > 0) && l4; l4 = l4->l4_next) {
		if (l4->l4_fd < 0)
			continue;
		if (FUNC0(l4->l4_fd, &rfd)) {
			if (opts & OPT_VERBOSE)
				FUNC9(stderr, "Ready to read on fd %d\n",
					l4->l4_fd);
			FUNC13(l4);
			i--;
		}

		if ((l4->l4_fd >= 0) && FUNC0(l4->l4_fd, &wfd)) {
			if (opts & OPT_VERBOSE)
				FUNC9(stderr, "Ready to write on fd %d\n",
					l4->l4_fd);
			FUNC18(l4);
			i--;
		}
	}
	return 0;
}
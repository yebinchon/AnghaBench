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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct tac_server {int /*<<< orphan*/  timeout; int /*<<< orphan*/  addr; } ;
struct tac_handle {size_t cur_server; int fd; struct tac_server* servers; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tac_handle*,char*,...) ; 
 scalar_t__ FUNC6 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct tac_handle *h)
{
	const struct tac_server *srvp = &h->servers[h->cur_server];
	int flags;

	if ((h->fd = FUNC9(PF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
		FUNC5(h, "Cannot create socket: %s", FUNC10(errno));
		return -1;
	}
	if ((flags = FUNC4(h->fd, F_GETFL, 0)) == -1 ||
	    FUNC4(h->fd, F_SETFL, flags | O_NONBLOCK) == -1) {
		FUNC5(h, "Cannot set non-blocking mode on socket: %s",
		    FUNC10(errno));
		FUNC2(h->fd);
		h->fd = -1;
		return -1;
	}
	if (FUNC3(h->fd, (struct sockaddr *)&srvp->addr,
	    sizeof srvp->addr) == 0)
		return 0;

	if (errno == EINPROGRESS) {
		fd_set wfds;
		struct timeval tv;
		int nfds;
		struct sockaddr peer;
		socklen_t errlen, peerlen;
		int err;

		/* Wait for the connection to complete. */
		FUNC1(&wfds);
		FUNC0(h->fd, &wfds);
		tv.tv_sec = srvp->timeout;
		tv.tv_usec = 0;
		nfds = FUNC8(h->fd + 1, NULL, &wfds, NULL, &tv);
		if (nfds == -1) {
			FUNC5(h, "select: %s", FUNC10(errno));
			FUNC2(h->fd);
			h->fd = -1;
			return -1;
		}
		if (nfds == 0) {
			FUNC5(h, "connect: timed out");
			FUNC2(h->fd);
			h->fd = -1;
			return -1;
		}

		/* See whether we are connected now. */
		peerlen = sizeof peer;
		if (FUNC6(h->fd, &peer, &peerlen) == 0)
			return 0;

		if (errno != ENOTCONN) {
			FUNC5(h, "getpeername: %s", FUNC10(errno));
			FUNC2(h->fd);
			h->fd = -1;
			return -1;
		}

		/* Find out why the connect failed. */
		errlen = sizeof err;
		FUNC7(h->fd, SOL_SOCKET, SO_ERROR, &err, &errlen);
		errno = err;
	}
	FUNC5(h, "connect: %s", FUNC10(errno));
	FUNC2(h->fd);
	h->fd = -1;
	return -1;
}
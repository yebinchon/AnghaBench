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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_side; scalar_t__ tc_fd; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 scalar_t__ TCP_CTX_MAGIC ; 
 scalar_t__ TCP_SIDE_CLIENT ; 
 int errno ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int
FUNC8(void *ctx, int timeout)
{
	struct tcp_ctx *tctx = ctx;
	struct timeval tv;
	fd_set fdset;
	socklen_t esize;
	int error, flags, ret;

	FUNC3(tctx != NULL);
	FUNC3(tctx->tc_magic == TCP_CTX_MAGIC);
	FUNC3(tctx->tc_side == TCP_SIDE_CLIENT);
	FUNC3(tctx->tc_fd >= 0);
	FUNC3(timeout >= 0);

	tv.tv_sec = timeout;
	tv.tv_usec = 0;
again:
	FUNC2(&fdset);
	FUNC1(tctx->tc_fd, &fdset);
	ret = FUNC7(tctx->tc_fd + 1, NULL, &fdset, NULL, &tv);
	if (ret == 0) {
		error = ETIMEDOUT;
		goto done;
	} else if (ret == -1) {
		if (errno == EINTR)
			goto again;
		error = errno;
		FUNC6(LOG_DEBUG, 1, errno, "select() failed");
		goto done;
	}
	FUNC3(ret > 0);
	FUNC3(FUNC0(tctx->tc_fd, &fdset));
	esize = sizeof(error);
	if (FUNC5(tctx->tc_fd, SOL_SOCKET, SO_ERROR, &error,
	    &esize) == -1) {
		error = errno;
		FUNC6(LOG_DEBUG, 1, errno,
		    "getsockopt(SO_ERROR) failed");
		goto done;
	}
	if (error != 0) {
		FUNC6(LOG_DEBUG, 1, error,
		    "getsockopt(SO_ERROR) returned error");
		goto done;
	}
	error = 0;
done:
	flags = FUNC4(tctx->tc_fd, F_GETFL);
	if (flags == -1) {
		if (error == 0)
			error = errno;
		FUNC6(LOG_DEBUG, 1, errno, "fcntl(F_GETFL) failed");
		return (error);
	}
	flags &= ~O_NONBLOCK;
	if (FUNC4(tctx->tc_fd, F_SETFL, flags) == -1) {
		if (error == 0)
			error = errno;
		FUNC6(LOG_DEBUG, 1, errno,
		    "fcntl(F_SETFL, ~O_NONBLOCK) failed");
	}
	return (error);
}
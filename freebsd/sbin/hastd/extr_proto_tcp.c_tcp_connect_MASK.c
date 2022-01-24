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
struct TYPE_2__ {scalar_t__ ss_family; int /*<<< orphan*/  ss_len; } ;
struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_side; scalar_t__ tc_fd; TYPE_1__ tc_sa; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCP_CTX_MAGIC ; 
 scalar_t__ TCP_SIDE_CLIENT ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC4 (void*,int) ; 

__attribute__((used)) static int
FUNC5(void *ctx, int timeout)
{
	struct tcp_ctx *tctx = ctx;
	int error, flags;

	FUNC0(tctx != NULL);
	FUNC0(tctx->tc_magic == TCP_CTX_MAGIC);
	FUNC0(tctx->tc_side == TCP_SIDE_CLIENT);
	FUNC0(tctx->tc_fd >= 0);
	FUNC0(tctx->tc_sa.ss_family != AF_UNSPEC);
	FUNC0(timeout >= -1);

	flags = FUNC2(tctx->tc_fd, F_GETFL);
	if (flags == -1) {
		FUNC3(LOG_DEBUG, 1, errno, "fcntl(F_GETFL) failed");
		return (errno);
	}
	/*
	 * We make socket non-blocking so we can handle connection timeout
	 * manually.
	 */
	flags |= O_NONBLOCK;
	if (FUNC2(tctx->tc_fd, F_SETFL, flags) == -1) {
		FUNC3(LOG_DEBUG, 1, errno,
		    "fcntl(F_SETFL, O_NONBLOCK) failed");
		return (errno);
	}

	if (FUNC1(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
	    tctx->tc_sa.ss_len) == 0) {
		if (timeout == -1)
			return (0);
		error = 0;
		goto done;
	}
	if (errno != EINPROGRESS) {
		error = errno;
		FUNC3(LOG_DEBUG, 1, errno, "connect() failed");
		goto done;
	}
	if (timeout == -1)
		return (0);
	return (FUNC4(ctx, timeout));
done:
	flags &= ~O_NONBLOCK;
	if (FUNC2(tctx->tc_fd, F_SETFL, flags) == -1) {
		if (error == 0)
			error = errno;
		FUNC3(LOG_DEBUG, 1, errno,
		    "fcntl(F_SETFL, ~O_NONBLOCK) failed");
	}
	return (error);
}
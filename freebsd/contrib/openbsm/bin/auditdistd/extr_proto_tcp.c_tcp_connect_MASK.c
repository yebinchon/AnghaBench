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
struct sockaddr_storage {int dummy; } ;
struct tcp_ctx {int /*<<< orphan*/  tc_fd; struct sockaddr_storage tc_sa; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCP_SIDE_CLIENT ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_ctx*) ; 
 int FUNC8 (struct tcp_ctx*,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,struct tcp_ctx**) ; 

__attribute__((used)) static int
FUNC10(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
	struct tcp_ctx *tctx;
	struct sockaddr_storage sa;
	int error, flags, ret;

	FUNC0(srcaddr == NULL || srcaddr[0] != '\0');
	FUNC0(dstaddr != NULL);
	FUNC0(timeout >= -1);

	error = FUNC9(dstaddr, TCP_SIDE_CLIENT, &tctx);
	if (error != 0)
		return (error);
	if (srcaddr != NULL) {
		error = FUNC6(srcaddr, 0, &sa);
		if (error != 0)
			goto fail;
		if (FUNC1(tctx->tc_fd, (struct sockaddr *)&sa,
		    FUNC5(&sa)) == -1) {
			error = errno;
			goto fail;
		}
	}

	flags = FUNC3(tctx->tc_fd, F_GETFL);
	if (flags == -1) {
		error = errno;
		FUNC4(LOG_DEBUG, 1, errno, "fcntl(F_GETFL) failed");
		goto fail;
	}
	/*
	 * We make socket non-blocking so we can handle connection timeout
	 * manually.
	 */
	flags |= O_NONBLOCK;
	if (FUNC3(tctx->tc_fd, F_SETFL, flags) == -1) {
		error = errno;
		FUNC4(LOG_DEBUG, 1, errno,
		    "fcntl(F_SETFL, O_NONBLOCK) failed");
		goto fail;
	}

	ret = FUNC2(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
	    FUNC5(&tctx->tc_sa));
	if (ret == -1 && errno != EINPROGRESS) {
		error = errno;
		FUNC4(LOG_DEBUG, 1, errno, "connect() failed");
		goto fail;
	}

	if (timeout >= 0) {
		if (ret == -1) {
			/* Connection still in progress. Wait for it. */
			error = FUNC8(tctx, timeout);
			if (error != 0)
				goto fail;
		} else {
			/* Connection already complete. */
			flags &= ~O_NONBLOCK;
			if (FUNC3(tctx->tc_fd, F_SETFL, flags) == -1) {
				error = errno;
				FUNC4(LOG_DEBUG, 1, errno,
				    "fcntl(F_SETFL, ~O_NONBLOCK) failed");
				goto fail;
			}
		}
	}

	*ctxp = tctx;
	return (0);
fail:
	FUNC7(tctx);
	return (error);
}
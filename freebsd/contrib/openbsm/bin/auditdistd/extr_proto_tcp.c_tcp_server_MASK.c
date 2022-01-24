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
typedef  int /*<<< orphan*/  val ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct tcp_ctx {int /*<<< orphan*/  tc_fd; TYPE_1__ tc_sa; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_SIDE_SERVER_LISTEN ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_ctx*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,struct tcp_ctx**) ; 

__attribute__((used)) static int
FUNC7(const char *addr, void **ctxp)
{
	struct tcp_ctx *tctx;
	int error, val;

	error = FUNC6(addr, TCP_SIDE_SERVER_LISTEN, &tctx);
	if (error != 0)
		return (error);

	val = 1;
	/* Ignore failure. */
	(void)FUNC3(tctx->tc_fd, SOL_SOCKET, SO_REUSEADDR, &val,
	   sizeof(val));

	FUNC0(tctx->tc_sa.ss_family != AF_UNSPEC);

	if (FUNC1(tctx->tc_fd, (struct sockaddr *)&tctx->tc_sa,
	    FUNC4(&tctx->tc_sa)) == -1) {
		error = errno;
		FUNC5(tctx);
		return (error);
	}
	if (FUNC2(tctx->tc_fd, 8) == -1) {
		error = errno;
		FUNC5(tctx);
		return (error);
	}

	*ctxp = tctx;

	return (0);
}
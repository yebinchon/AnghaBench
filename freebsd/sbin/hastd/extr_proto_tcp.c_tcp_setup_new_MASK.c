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
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct tcp_ctx {int tc_fd; int tc_side; int /*<<< orphan*/  tc_magic; TYPE_1__ tc_sa; } ;
typedef  int /*<<< orphan*/  nodelay ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROTO_TCP_DEFAULT_PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_CTX_MAGIC ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int TCP_SIDE_CLIENT ; 
 int TCP_SIDE_SERVER_LISTEN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_ctx*) ; 
 struct tcp_ctx* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(const char *addr, int side, void **ctxp)
{
	struct tcp_ctx *tctx;
	int ret, nodelay;

	FUNC0(addr != NULL);
	FUNC0(side == TCP_SIDE_CLIENT ||
	    side == TCP_SIDE_SERVER_LISTEN);
	FUNC0(ctxp != NULL);

	tctx = FUNC2(sizeof(*tctx));
	if (tctx == NULL)
		return (errno);

	/* Parse given address. */
	if ((ret = FUNC6(addr, PROTO_TCP_DEFAULT_PORT, &tctx->tc_sa)) != 0) {
		FUNC1(tctx);
		return (ret);
	}

	FUNC0(tctx->tc_sa.ss_family != AF_UNSPEC);

	tctx->tc_fd = FUNC5(tctx->tc_sa.ss_family, SOCK_STREAM, 0);
	if (tctx->tc_fd == -1) {
		ret = errno;
		FUNC1(tctx);
		return (ret);
	}

	FUNC0(tctx->tc_sa.ss_family != AF_UNSPEC);

	/* Socket settings. */
	nodelay = 1;
	if (FUNC4(tctx->tc_fd, IPPROTO_TCP, TCP_NODELAY, &nodelay,
	    sizeof(nodelay)) == -1) {
		FUNC3(LOG_WARNING, "Unable to set TCP_NOELAY");
	}

	tctx->tc_side = side;
	tctx->tc_magic = TCP_CTX_MAGIC;
	*ctxp = tctx;

	return (0);
}
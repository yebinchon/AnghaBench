#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct cf_conn {int /*<<< orphan*/  verf_body; int /*<<< orphan*/  xdrs; int /*<<< orphan*/  strm_stat; } ;
struct __rpc_sockinfo {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  oa_base; } ;
struct TYPE_10__ {int xp_fd; int /*<<< orphan*/  xp_netid; scalar_t__ xp_port; TYPE_1__ xp_verf; struct cf_conn* xp_p1; } ;
typedef  TYPE_2__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_IDLE ; 
 scalar_t__ FUNC0 (int,struct __rpc_sockinfo*) ; 
 scalar_t__ FUNC1 (struct __rpc_sockinfo*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cf_conn* FUNC3 (int) ; 
 int /*<<< orphan*/  read_vc ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  write_vc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static SVCXPRT *
FUNC11(int fd, u_int sendsize, u_int recvsize)
{
	SVCXPRT *xprt;
	struct cf_conn *cd;
	const char *netid;
	struct __rpc_sockinfo si;
 
	FUNC2(fd != -1);

	xprt = FUNC6();
	if (xprt == NULL) {
		FUNC8("svc_vc: makefd_xprt: out of memory");
		goto done;
	}
	cd = FUNC3(sizeof(struct cf_conn));
	if (cd == NULL) {
		FUNC8("svc_tcp: makefd_xprt: out of memory");
		FUNC7(xprt);
		xprt = NULL;
		goto done;
	}
	cd->strm_stat = XPRT_IDLE;
	FUNC9(&(cd->xdrs), sendsize, recvsize,
	    xprt, read_vc, write_vc);
	xprt->xp_p1 = cd;
	xprt->xp_verf.oa_base = cd->verf_body;
	FUNC5(xprt);  /* truly deals with calls */
	xprt->xp_port = 0;  /* this is a connection, not a rendezvouser */
	xprt->xp_fd = fd;
        if (FUNC0(fd, &si) && FUNC1(&si, &netid))
		xprt->xp_netid = FUNC4(netid);

	FUNC10(xprt);
done:
	return (xprt);
}
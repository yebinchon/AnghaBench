#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cf_rendezvous {int /*<<< orphan*/  xdrs; } ;
struct cf_conn {int /*<<< orphan*/  xdrs; } ;
struct TYPE_7__ {int maxlen; struct cf_rendezvous* buf; } ;
struct TYPE_6__ {int maxlen; struct cf_rendezvous* buf; } ;
struct TYPE_8__ {scalar_t__ xp_fd; scalar_t__ xp_port; int /*<<< orphan*/  xp_netid; int /*<<< orphan*/  xp_tp; TYPE_2__ xp_ltaddr; TYPE_1__ xp_rtaddr; scalar_t__ xp_p1; } ;
typedef  TYPE_3__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ RPC_ANYFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_rendezvous*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(SVCXPRT *xprt)
{
	struct cf_conn *cd;
	struct cf_rendezvous *r;

	cd = (struct cf_conn *)xprt->xp_p1;

	if (xprt->xp_fd != RPC_ANYFD)
		(void)FUNC1(xprt->xp_fd);
	if (xprt->xp_port != 0) {
		/* a rendezvouser socket */
		r = (struct cf_rendezvous *)xprt->xp_p1;
		FUNC3(r, sizeof (struct cf_rendezvous));
		xprt->xp_port = 0;
	} else {
		/* an actual connection socket */
		FUNC0(&(cd->xdrs));
		FUNC3(cd, sizeof(struct cf_conn));
	}
	if (xprt->xp_rtaddr.buf)
		FUNC3(xprt->xp_rtaddr.buf, xprt->xp_rtaddr.maxlen);
	if (xprt->xp_ltaddr.buf)
		FUNC3(xprt->xp_ltaddr.buf, xprt->xp_ltaddr.maxlen);
	FUNC2(xprt->xp_tp);
	FUNC2(xprt->xp_netid);
	FUNC4(xprt);
}
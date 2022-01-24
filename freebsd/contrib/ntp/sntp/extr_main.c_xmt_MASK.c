#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* spkt; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ xmt_ctx ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct pkt {int dummy; } ;
struct dns_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  key_id; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_5__ {scalar_t__ stime; int /*<<< orphan*/  x_pkt; int /*<<< orphan*/  addr; struct dns_ctx* dctx; } ;
typedef  TYPE_2__ sent_pkt ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 scalar_t__ JAN_1970 ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (struct pkt*,struct timeval*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pkt*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(
	xmt_ctx *	xctx
	)
{
	SOCKET		sock = xctx->sock;
	struct dns_ctx *dctx = xctx->spkt->dctx;
	sent_pkt *	spkt = xctx->spkt;
	sockaddr_u *	dst = &spkt->addr;
	struct timeval	tv_xmt;
	struct pkt	x_pkt;
	size_t		pkt_len;
	int		sent;

	if (0 != FUNC4(&tv_xmt, NULL)) {
		FUNC7(LOG_ERR,
			"xmt: gettimeofday() failed: %m");
		FUNC2(1);
	}
	tv_xmt.tv_sec += JAN_1970;

	pkt_len = FUNC3(&x_pkt, &tv_xmt, dctx->key_id,
			       dctx->key);

	sent = FUNC8(sock, dst, &x_pkt, pkt_len);
	if (sent) {
		/* Save the packet we sent... */
		FUNC5(&spkt->x_pkt, &x_pkt, FUNC6(sizeof(spkt->x_pkt),
		       pkt_len));
		spkt->stime = tv_xmt.tv_sec - JAN_1970;

		FUNC0(2, ("xmt: %lx.%6.6u %s %s\n", (u_long)tv_xmt.tv_sec,
			  (u_int)tv_xmt.tv_usec, dctx->name, FUNC9(dst)));
	} else {
		FUNC1(dctx->name, dst);
	}

	return;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
struct mbdata {int /*<<< orphan*/  mb_top; } ;
struct nbns_rq {int nr_nmflags; int nr_trnid; int nr_opcode; int nr_qdcount; int nr_ancount; int nr_nscount; int nr_arcount; int nr_qdtype; int nr_qdclass; int /*<<< orphan*/  nr_qdname; TYPE_2__ nr_dest; int /*<<< orphan*/  nr_rp; struct mbdata nr_rq; struct nb_ctx* nr_nbd; } ;
struct nb_ctx {int nb_timo; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INADDR_BROADCAST ; 
 int /*<<< orphan*/  NBDG_MAXSIZE ; 
 int NBNS_NMFLAG_BCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mbdata*,int,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbdata*,int) ; 
 int FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * nb_iflist ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct nbns_rq *rqp)
{
	struct nb_ctx *ctx = rqp->nr_nbd;
	struct mbdata *mbp = &rqp->nr_rq;
	u_int8_t nmflags;
	u_char *cp;
	int len, error;

	error = FUNC2(&rqp->nr_rp, NBDG_MAXSIZE);
	if (error)
		return error;
	if (rqp->nr_dest.sin_addr.s_addr == INADDR_BROADCAST) {
		rqp->nr_nmflags |= NBNS_NMFLAG_BCAST;
		if (nb_iflist == NULL) {
			error = FUNC5(&nb_iflist, 100);
			if (error)
				return error;
		}
	} else
		rqp->nr_nmflags &= ~NBNS_NMFLAG_BCAST;
	FUNC3(mbp, rqp->nr_trnid);
	nmflags = ((rqp->nr_opcode & 0x1F) << 3) | ((rqp->nr_nmflags & 0x70) >> 4);
	FUNC4(mbp, nmflags);
	FUNC4(mbp, (rqp->nr_nmflags & 0x0f) << 4 /* rcode */);
	FUNC3(mbp, rqp->nr_qdcount);
	FUNC3(mbp, rqp->nr_ancount);
	FUNC3(mbp, rqp->nr_nscount);
	FUNC3(mbp, rqp->nr_arcount);
	if (rqp->nr_qdcount) {
		if (rqp->nr_qdcount > 1)
			return EINVAL;
		len = FUNC7(rqp->nr_qdname);
		error = FUNC1(mbp, len, (char**)&cp);
		if (error)
			return error;
		FUNC6(rqp->nr_qdname, cp);
		FUNC3(mbp, rqp->nr_qdtype);
		FUNC3(mbp, rqp->nr_qdclass);
	}
	FUNC0(mbp->mb_top, &mbp->mb_top);
	if (ctx->nb_timo == 0)
		ctx->nb_timo = 1;	/* by default 1 second */
	return 0;
}
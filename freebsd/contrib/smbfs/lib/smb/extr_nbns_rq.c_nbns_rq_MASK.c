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
typedef  int u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct mbdata {int mb_count; } ;
struct nbns_rq {int nr_nmflags; scalar_t__ nr_trnid; int nr_rpnmflags; int nr_rprcode; scalar_t__ nr_rpancount; scalar_t__ nr_rpnscount; scalar_t__ nr_rparcount; struct mbdata nr_rp; int /*<<< orphan*/  nr_fd; TYPE_1__* nr_if; struct mbdata nr_rq; } ;
struct TYPE_2__ {struct TYPE_2__* id_next; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int) ; 
 int NBERR_INVALIDRESPONSE ; 
 int NBNS_NMFLAG_BCAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbdata*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbdata*,int*) ; 
 TYPE_1__* nb_iflist ; 
 int FUNC4 (struct nbns_rq*) ; 
 int FUNC5 (struct nbns_rq*) ; 
 int FUNC6 (struct nbns_rq*) ; 

int
FUNC7(struct nbns_rq *rqp)
{
	struct mbdata *mbp = &rqp->nr_rq;
	u_int16_t rpid;
	u_int8_t nmflags;
	int error, retrycount;

	rqp->nr_if = nb_iflist;
again:
	error = FUNC4(rqp);
	if (error)
		return error;
	retrycount = 3;	/* XXX - configurable */
	for (;;) {
		error = FUNC6(rqp);
		if (error)
			return error;
		error = FUNC5(rqp);
		if (error) {
			if (error != ETIMEDOUT || retrycount == 0) {
				if ((rqp->nr_nmflags & NBNS_NMFLAG_BCAST) &&
				    rqp->nr_if != NULL &&
				    rqp->nr_if->id_next != NULL) {
					rqp->nr_if = rqp->nr_if->id_next;
					FUNC1(rqp->nr_fd);
					goto again;
				} else
					return error;
			}
			retrycount--;
			continue;
		}
		mbp = &rqp->nr_rp;
		if (mbp->mb_count < 12)
			return FUNC0(NBERR_INVALIDRESPONSE);
		FUNC2(mbp, &rpid);
		if (rpid != rqp->nr_trnid)
			return FUNC0(NBERR_INVALIDRESPONSE);
		break;
	}
	FUNC3(mbp, &nmflags);
	rqp->nr_rpnmflags = (nmflags & 7) << 4;
	FUNC3(mbp, &nmflags);
	rqp->nr_rpnmflags |= (nmflags & 0xf0) >> 4;
	rqp->nr_rprcode = nmflags & 0xf;
	if (rqp->nr_rprcode)
		return FUNC0(rqp->nr_rprcode);
	FUNC2(mbp, &rpid);	/* QDCOUNT */
	FUNC2(mbp, &rqp->nr_rpancount);
	FUNC2(mbp, &rqp->nr_rpnscount);
	FUNC2(mbp, &rqp->nr_rparcount);
	return 0;
}
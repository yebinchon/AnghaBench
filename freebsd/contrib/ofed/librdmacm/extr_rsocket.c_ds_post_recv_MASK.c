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
typedef  scalar_t__ uint32_t ;
struct rsocket {scalar_t__ rbuf_size; } ;
struct ibv_sge {int length; int /*<<< orphan*/  lkey; scalar_t__ addr; } ;
struct ibv_recv_wr {int num_sge; struct ibv_sge* sg_list; int /*<<< orphan*/ * next; int /*<<< orphan*/  wr_id; } ;
struct ibv_grh {int dummy; } ;
struct ds_qp {TYPE_2__* cm_id; TYPE_1__* rmr; scalar_t__ rbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int RS_SNDLOWAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ibv_recv_wr*,struct ibv_recv_wr**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct rsocket *rs, struct ds_qp *qp, uint32_t offset)
{
	struct ibv_recv_wr wr, *bad;
	struct ibv_sge sge[2];

	sge[0].addr = (uintptr_t) qp->rbuf + rs->rbuf_size;
	sge[0].length = sizeof(struct ibv_grh);
	sge[0].lkey = qp->rmr->lkey;
	sge[1].addr = (uintptr_t) qp->rbuf + offset;
	sge[1].length = RS_SNDLOWAT;
	sge[1].lkey = qp->rmr->lkey;

	wr.wr_id = FUNC2(offset);
	wr.next = NULL;
	wr.sg_list = sge;
	wr.num_sge = 2;

	return FUNC1(FUNC0(qp->cm_id->qp, &wr, &bad));
}
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
struct rsocket {int opts; int rbuf_msg_index; int rq_size; TYPE_2__* cm_id; TYPE_1__* rmr; scalar_t__ rbuf_size; scalar_t__ rbuf; } ;
struct ibv_sge {int length; int /*<<< orphan*/  lkey; scalar_t__ addr; } ;
struct ibv_recv_wr {int num_sge; struct ibv_sge* sg_list; void* wr_id; int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int RS_MSG_SIZE ; 
 int RS_OPT_MSG_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ibv_recv_wr*,struct ibv_recv_wr**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct rsocket *rs)
{
	struct ibv_recv_wr wr, *bad;
	struct ibv_sge sge;

	wr.next = NULL;
	if (!(rs->opts & RS_OPT_MSG_SEND)) {
		wr.wr_id = FUNC2(0);
		wr.sg_list = NULL;
		wr.num_sge = 0;
	} else {
		wr.wr_id = FUNC2(rs->rbuf_msg_index);
		sge.addr = (uintptr_t) rs->rbuf + rs->rbuf_size +
			   (rs->rbuf_msg_index * RS_MSG_SIZE);
		sge.length = RS_MSG_SIZE;
		sge.lkey = rs->rmr->lkey;

		wr.sg_list = &sge;
		wr.num_sge = 1;
		if(++rs->rbuf_msg_index == rs->rq_size)
			rs->rbuf_msg_index = 0;
	}

	return FUNC1(FUNC0(rs->cm_id->qp, &wr, &bad));
}
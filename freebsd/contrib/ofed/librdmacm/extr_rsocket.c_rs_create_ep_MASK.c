#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rsocket {int opts; int rq_size; scalar_t__ sq_inline; TYPE_4__* cm_id; int /*<<< orphan*/  sq_size; } ;
struct TYPE_8__ {int max_recv_wr; int max_send_sge; int max_recv_sge; scalar_t__ max_inline_data; int /*<<< orphan*/  max_send_wr; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_3__ cap; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; struct rsocket* qp_context; } ;
struct TYPE_9__ {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; TYPE_2__* verbs; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_6__ {scalar_t__ transport_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBV_QPT_RC ; 
 scalar_t__ IBV_TRANSPORT_IWARP ; 
 scalar_t__ RS_MSG_SIZE ; 
 int RS_OPT_MSG_SEND ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,struct ibv_qp_init_attr*) ; 
 int FUNC3 (struct rsocket*,TYPE_4__*) ; 
 int FUNC4 (struct rsocket*) ; 
 int FUNC5 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsocket*) ; 

__attribute__((used)) static int FUNC7(struct rsocket *rs)
{
	struct ibv_qp_init_attr qp_attr;
	int i, ret;

	FUNC6(rs);
	if (rs->cm_id->verbs->device->transport_type == IBV_TRANSPORT_IWARP)
		rs->opts |= RS_OPT_MSG_SEND;
	ret = FUNC3(rs, rs->cm_id);
	if (ret)
		return ret;

	FUNC1(&qp_attr, 0, sizeof qp_attr);
	qp_attr.qp_context = rs;
	qp_attr.send_cq = rs->cm_id->send_cq;
	qp_attr.recv_cq = rs->cm_id->recv_cq;
	qp_attr.qp_type = IBV_QPT_RC;
	qp_attr.sq_sig_all = 1;
	qp_attr.cap.max_send_wr = rs->sq_size;
	qp_attr.cap.max_recv_wr = rs->rq_size;
	qp_attr.cap.max_send_sge = 2;
	qp_attr.cap.max_recv_sge = 1;
	qp_attr.cap.max_inline_data = rs->sq_inline;

	ret = FUNC2(rs->cm_id, NULL, &qp_attr);
	if (ret)
		return ret;

	rs->sq_inline = qp_attr.cap.max_inline_data;
	if ((rs->opts & RS_OPT_MSG_SEND) && (rs->sq_inline < RS_MSG_SIZE))
		return FUNC0(ENOTSUP);

	ret = FUNC4(rs);
	if (ret)
		return ret;

	for (i = 0; i < rs->rq_size; i++) {
		ret = FUNC5(rs);
		if (ret)
			return ret;
	}
	return 0;
}
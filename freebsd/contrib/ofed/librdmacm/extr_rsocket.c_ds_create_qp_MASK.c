#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union socket_addr {int /*<<< orphan*/  sa; } ;
struct rsocket {int rq_size; int /*<<< orphan*/  epfd; int /*<<< orphan*/  sq_inline; int /*<<< orphan*/  sq_size; } ;
struct TYPE_8__ {int max_recv_wr; int max_send_sge; int max_recv_sge; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  max_send_wr; } ;
struct ibv_qp_init_attr {int sq_sig_all; TYPE_1__ cap; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; struct ds_qp* qp_context; } ;
struct TYPE_9__ {struct ds_qp* ptr; } ;
struct epoll_event {TYPE_2__ data; int /*<<< orphan*/  events; } ;
struct ds_qp {TYPE_4__* cm_id; int /*<<< orphan*/  hdr; struct rsocket* rs; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_11__ {TYPE_3__* recv_cq_channel; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;
struct TYPE_10__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBV_QPT_UD ; 
 int /*<<< orphan*/  RDMA_PS_UDP ; 
 int RS_SNDLOWAT ; 
 struct ds_qp* FUNC1 (int,int) ; 
 int FUNC2 (struct ds_qp*,union socket_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,union socket_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ds_qp*) ; 
 int FUNC5 (struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsocket*,struct ds_qp*) ; 
 int FUNC7 (struct rsocket*,struct ds_qp*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibv_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_4__**,struct ds_qp*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,struct ibv_qp_init_attr*) ; 
 int FUNC13 (struct rsocket*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC14(struct rsocket *rs, union socket_addr *src_addr,
			socklen_t addrlen, struct ds_qp **new_qp)
{
	struct ds_qp *qp;
	struct ibv_qp_init_attr qp_attr;
	struct epoll_event event;
	int i, ret;

	qp = FUNC1(1, sizeof(*qp));
	if (!qp)
		return FUNC0(ENOMEM);

	qp->rs = rs;
	ret = FUNC11(NULL, &qp->cm_id, qp, RDMA_PS_UDP);
	if (ret)
		goto err;

	FUNC3(&qp->hdr, src_addr);
	ret = FUNC10(qp->cm_id, &src_addr->sa);
	if (ret)
		goto err;

	ret = FUNC5(qp);
	if (ret)
		goto err;

	ret = FUNC13(rs, qp->cm_id);
	if (ret)
		goto err;

	FUNC9(&qp_attr, 0, sizeof qp_attr);
	qp_attr.qp_context = qp;
	qp_attr.send_cq = qp->cm_id->send_cq;
	qp_attr.recv_cq = qp->cm_id->recv_cq;
	qp_attr.qp_type = IBV_QPT_UD;
	qp_attr.sq_sig_all = 1;
	qp_attr.cap.max_send_wr = rs->sq_size;
	qp_attr.cap.max_recv_wr = rs->rq_size;
	qp_attr.cap.max_send_sge = 1;
	qp_attr.cap.max_recv_sge = 2;
	qp_attr.cap.max_inline_data = rs->sq_inline;
	ret = FUNC12(qp->cm_id, NULL, &qp_attr);
	if (ret)
		goto err;

	rs->sq_inline = qp_attr.cap.max_inline_data;
	ret = FUNC2(qp, src_addr, addrlen);
	if (ret)
		goto err;

	event.events = EPOLLIN;
	event.data.ptr = qp;
	ret = FUNC8(rs->epfd,  EPOLL_CTL_ADD,
			qp->cm_id->recv_cq_channel->fd, &event);
	if (ret)
		goto err;

	for (i = 0; i < rs->rq_size; i++) {
		ret = FUNC7(rs, qp, i * RS_SNDLOWAT);
		if (ret)
			goto err;
	}

	FUNC6(rs, qp);
	*new_qp = qp;
	return 0;
err:
	FUNC4(qp);
	return ret;
}
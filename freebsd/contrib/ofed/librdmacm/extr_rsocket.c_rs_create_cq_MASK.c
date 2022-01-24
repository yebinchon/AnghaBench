#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rsocket {int fd_flags; scalar_t__ rq_size; scalar_t__ sq_size; } ;
struct rdma_cm_id {TYPE_1__* recv_cq_channel; int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; TYPE_1__* send_cq_channel; int /*<<< orphan*/  verbs; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct rdma_cm_id*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rsocket *rs, struct rdma_cm_id *cm_id)
{
	cm_id->recv_cq_channel = FUNC1(cm_id->verbs);
	if (!cm_id->recv_cq_channel)
		return -1;

	cm_id->recv_cq = FUNC2(cm_id->verbs, rs->sq_size + rs->rq_size,
				       cm_id, cm_id->recv_cq_channel, 0);
	if (!cm_id->recv_cq)
		goto err1;

	if (rs->fd_flags & O_NONBLOCK) {
		if (FUNC0(cm_id->recv_cq_channel->fd, F_SETFL, O_NONBLOCK))
			goto err2;
	}

	FUNC5(cm_id->recv_cq, 0);
	cm_id->send_cq_channel = cm_id->recv_cq_channel;
	cm_id->send_cq = cm_id->recv_cq;
	return 0;

err2:
	FUNC4(cm_id->recv_cq);
	cm_id->recv_cq = NULL;
err1:
	FUNC3(cm_id->recv_cq_channel);
	cm_id->recv_cq_channel = NULL;
	return -1;
}
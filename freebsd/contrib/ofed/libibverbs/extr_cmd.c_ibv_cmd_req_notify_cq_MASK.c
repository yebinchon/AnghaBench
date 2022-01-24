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
struct ibv_req_notify_cq {int solicited; int /*<<< orphan*/  cq_handle; } ;
struct ibv_cq {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_req_notify_cq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_NOTIFY_CQ ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ibv_req_notify_cq*,int) ; 

int FUNC2(struct ibv_cq *ibcq, int solicited_only)
{
	struct ibv_req_notify_cq cmd;

	FUNC0(&cmd, sizeof cmd, REQ_NOTIFY_CQ);
	cmd.cq_handle = ibcq->handle;
	cmd.solicited = !!solicited_only;

	if (FUNC1(ibcq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	return 0;
}
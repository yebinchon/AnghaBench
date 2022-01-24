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
struct ibv_resize_cq_resp {int /*<<< orphan*/  cqe; } ;
struct ibv_resize_cq {int cqe; int /*<<< orphan*/  cq_handle; } ;
struct ibv_cq {int /*<<< orphan*/  cqe; TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_resize_cq*,size_t,int /*<<< orphan*/ ,struct ibv_resize_cq_resp*,size_t) ; 
 int /*<<< orphan*/  RESIZE_CQ ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_resize_cq_resp*,size_t) ; 
 int errno ; 
 size_t FUNC2 (int /*<<< orphan*/ ,struct ibv_resize_cq*,size_t) ; 

int FUNC3(struct ibv_cq *cq, int cqe,
		      struct ibv_resize_cq *cmd, size_t cmd_size,
		      struct ibv_resize_cq_resp *resp, size_t resp_size)
{
	FUNC0(cmd, cmd_size, RESIZE_CQ, resp, resp_size);
	cmd->cq_handle = cq->handle;
	cmd->cqe       = cqe;

	if (FUNC2(cq->context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(resp, resp_size);

	cq->cqe = resp->cqe;

	return 0;
}
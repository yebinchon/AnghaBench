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
struct ibv_srq_attr {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ibv_srq {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_query_srq_resp {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ibv_query_srq {scalar_t__ reserved; int /*<<< orphan*/  srq_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_query_srq*,size_t,int /*<<< orphan*/ ,struct ibv_query_srq_resp*,int) ; 
 int /*<<< orphan*/  QUERY_SRQ ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_query_srq_resp*,int) ; 
 int errno ; 
 size_t FUNC2 (int /*<<< orphan*/ ,struct ibv_query_srq*,size_t) ; 

int FUNC3(struct ibv_srq *srq, struct ibv_srq_attr *srq_attr,
		      struct ibv_query_srq *cmd, size_t cmd_size)
{
	struct ibv_query_srq_resp resp;

	FUNC0(cmd, cmd_size, QUERY_SRQ, &resp, sizeof resp);
	cmd->srq_handle = srq->handle;
	cmd->reserved   = 0;

	if (FUNC2(srq->context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(&resp, sizeof resp);

	srq_attr->max_wr    = resp.max_wr;
	srq_attr->max_sge   = resp.max_sge;
	srq_attr->srq_limit = resp.srq_limit;

	return 0;
}
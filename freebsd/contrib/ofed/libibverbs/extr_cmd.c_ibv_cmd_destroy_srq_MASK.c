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
struct ibv_srq {scalar_t__ events_completed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_destroy_srq_resp {scalar_t__ events_reported; } ;
struct ibv_destroy_srq {scalar_t__ reserved; int /*<<< orphan*/  srq_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESTROY_SRQ ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_destroy_srq*,int,int /*<<< orphan*/ ,struct ibv_destroy_srq_resp*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_destroy_srq_resp*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ibv_destroy_srq*,int) ; 

int FUNC6(struct ibv_srq *srq)
{
	struct ibv_destroy_srq      cmd;
	struct ibv_destroy_srq_resp resp;

	FUNC0(&cmd, sizeof cmd, DESTROY_SRQ, &resp, sizeof resp);
	cmd.srq_handle = srq->handle;
	cmd.reserved   = 0;

	if (FUNC5(srq->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	(void) FUNC1(&resp, sizeof resp);

	FUNC3(&srq->mutex);
	while (srq->events_completed != resp.events_reported)
		FUNC2(&srq->cond, &srq->mutex);
	FUNC4(&srq->mutex);

	return 0;
}
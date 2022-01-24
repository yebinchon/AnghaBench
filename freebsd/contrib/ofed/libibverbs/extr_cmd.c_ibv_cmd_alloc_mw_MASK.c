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
struct ibv_pd {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_mw {int type; int /*<<< orphan*/  handle; int /*<<< orphan*/  rkey; struct ibv_pd* pd; TYPE_1__* context; } ;
struct ibv_alloc_mw_resp {int /*<<< orphan*/  mw_handle; int /*<<< orphan*/  rkey; } ;
struct ibv_alloc_mw {int mw_type; int /*<<< orphan*/  reserved; int /*<<< orphan*/  pd_handle; } ;
typedef  enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_MW ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_alloc_mw*,size_t,int /*<<< orphan*/ ,struct ibv_alloc_mw_resp*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_alloc_mw_resp*,size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,struct ibv_alloc_mw*,size_t) ; 

int FUNC4(struct ibv_pd *pd, enum ibv_mw_type type,
		     struct ibv_mw *mw, struct ibv_alloc_mw *cmd,
		     size_t cmd_size,
		     struct ibv_alloc_mw_resp *resp, size_t resp_size)
{
	FUNC0(cmd, cmd_size, ALLOC_MW, resp, resp_size);
	cmd->pd_handle	= pd->handle;
	cmd->mw_type	= type;
	FUNC2(cmd->reserved, 0, sizeof(cmd->reserved));

	if (FUNC3(pd->context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(resp, resp_size);

	mw->context = pd->context;
	mw->pd      = pd;
	mw->rkey    = resp->rkey;
	mw->handle  = resp->mw_handle;
	mw->type    = type;

	return 0;
}
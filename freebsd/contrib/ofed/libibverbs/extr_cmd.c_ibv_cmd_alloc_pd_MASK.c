#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ibv_pd {struct ibv_context* context; int /*<<< orphan*/  handle; } ;
struct ibv_context {int /*<<< orphan*/  cmd_fd; } ;
struct ibv_alloc_pd_resp {int /*<<< orphan*/  pd_handle; } ;
struct ibv_alloc_pd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_PD ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_alloc_pd*,size_t,int /*<<< orphan*/ ,struct ibv_alloc_pd_resp*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_alloc_pd_resp*,size_t) ; 
 int errno ; 
 size_t FUNC2 (int /*<<< orphan*/ ,struct ibv_alloc_pd*,size_t) ; 

int FUNC3(struct ibv_context *context, struct ibv_pd *pd,
		     struct ibv_alloc_pd *cmd, size_t cmd_size,
		     struct ibv_alloc_pd_resp *resp, size_t resp_size)
{
	FUNC0(cmd, cmd_size, ALLOC_PD, resp, resp_size);

	if (FUNC2(context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(resp, resp_size);

	pd->handle  = resp->pd_handle;
	pd->context = context;

	return 0;
}
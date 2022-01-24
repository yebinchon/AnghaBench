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
struct ibv_get_context_resp {int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  async_fd; } ;
struct ibv_get_context {int dummy; } ;
struct ibv_context {int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  async_fd; int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  GET_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_get_context*,size_t,int /*<<< orphan*/ ,struct ibv_get_context_resp*,size_t) ; 
 scalar_t__ IB_USER_VERBS_MIN_ABI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_get_context_resp*,size_t) ; 
 scalar_t__ abi_ver ; 
 int errno ; 
 size_t FUNC2 (int /*<<< orphan*/ ,struct ibv_get_context*,size_t) ; 

int FUNC3(struct ibv_context *context, struct ibv_get_context *cmd,
			size_t cmd_size, struct ibv_get_context_resp *resp,
			size_t resp_size)
{
	if (abi_ver < IB_USER_VERBS_MIN_ABI_VERSION)
		return ENOSYS;

	FUNC0(cmd, cmd_size, GET_CONTEXT, resp, resp_size);

	if (FUNC2(context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	(void) FUNC1(resp, resp_size);

	context->async_fd         = resp->async_fd;
	context->num_comp_vectors = resp->num_comp_vectors;

	return 0;
}
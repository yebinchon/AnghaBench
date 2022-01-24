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
struct ibv_flow {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_destroy_flow {int /*<<< orphan*/  flow_handle; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESTROY_FLOW ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_destroy_flow*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_flow*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_destroy_flow*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ibv_destroy_flow*,int) ; 

int FUNC4(struct ibv_flow *flow_id)
{
	struct ibv_destroy_flow cmd;
	int ret = 0;

	FUNC2(&cmd, 0, sizeof(cmd));
	FUNC0(&cmd, sizeof(cmd), DESTROY_FLOW);
	cmd.flow_handle = flow_id->handle;

	if (FUNC3(flow_id->context->cmd_fd, &cmd, sizeof(cmd)) != sizeof(cmd))
		ret = errno;
	FUNC1(flow_id);
	return ret;
}
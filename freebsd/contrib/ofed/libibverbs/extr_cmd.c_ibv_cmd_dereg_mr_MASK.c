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
struct ibv_mr {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_dereg_mr {int /*<<< orphan*/  mr_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEREG_MR ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_dereg_mr*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ibv_dereg_mr*,int) ; 

int FUNC2(struct ibv_mr *mr)
{
	struct ibv_dereg_mr cmd;

	FUNC0(&cmd, sizeof cmd, DEREG_MR);
	cmd.mr_handle = mr->handle;

	if (FUNC1(mr->context->cmd_fd, &cmd, sizeof cmd) != sizeof cmd)
		return errno;

	return 0;
}
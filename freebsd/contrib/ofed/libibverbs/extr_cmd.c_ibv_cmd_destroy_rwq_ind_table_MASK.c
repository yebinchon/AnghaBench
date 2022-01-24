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
struct ibv_rwq_ind_table {TYPE_1__* context; int /*<<< orphan*/  ind_tbl_handle; } ;
struct ibv_destroy_rwq_ind_table {int /*<<< orphan*/  ind_tbl_handle; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESTROY_RWQ_IND_TBL ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_destroy_rwq_ind_table*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_destroy_rwq_ind_table*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ibv_destroy_rwq_ind_table*,int) ; 

int FUNC3(struct ibv_rwq_ind_table *rwq_ind_table)
{
	struct ibv_destroy_rwq_ind_table cmd;
	int ret = 0;

	FUNC1(&cmd, 0, sizeof(cmd));
	FUNC0(&cmd, sizeof(cmd), DESTROY_RWQ_IND_TBL);
	cmd.ind_tbl_handle = rwq_ind_table->ind_tbl_handle;

	if (FUNC2(rwq_ind_table->context->cmd_fd, &cmd, sizeof(cmd)) != sizeof(cmd))
		ret = errno;

	return ret;
}
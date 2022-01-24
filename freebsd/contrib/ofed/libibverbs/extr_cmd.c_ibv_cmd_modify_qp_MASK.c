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
struct ibv_qp_attr {int dummy; } ;
struct ibv_qp {TYPE_1__* context; } ;
struct ibv_modify_qp {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_modify_qp*,size_t,int /*<<< orphan*/ ) ; 
 int IBV_QP_DEST_QPN ; 
 int /*<<< orphan*/  MODIFY_QP ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_qp*,struct ibv_qp_attr*,int,int /*<<< orphan*/ *) ; 
 int errno ; 
 size_t FUNC2 (int /*<<< orphan*/ ,struct ibv_modify_qp*,size_t) ; 

int FUNC3(struct ibv_qp *qp, struct ibv_qp_attr *attr,
		      int attr_mask,
		      struct ibv_modify_qp *cmd, size_t cmd_size)
{
	/*
	 * Masks over IBV_QP_DEST_QPN are only supported by
	 * ibv_cmd_modify_qp_ex.
	 */
	if (attr_mask & ~((IBV_QP_DEST_QPN << 1) - 1))
		return EOPNOTSUPP;

	FUNC0(cmd, cmd_size, MODIFY_QP);

	FUNC1(qp, attr, attr_mask, &cmd->base);

	if (FUNC2(qp->context->cmd_fd, cmd, cmd_size) != cmd_size)
		return errno;

	return 0;
}
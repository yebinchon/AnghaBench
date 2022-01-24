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
struct ibv_qp {int dummy; } ;
struct TYPE_2__ {struct ibv_qp qp; } ;
struct mlx4_qp {TYPE_1__ verbs_qp; } ;
struct ibv_qp_open_attr {int dummy; } ;
struct ibv_open_qp {int dummy; } ;
struct ibv_create_qp_resp {int dummy; } ;
struct ibv_context {int dummy; } ;

/* Variables and functions */
 struct mlx4_qp* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_qp*) ; 
 int FUNC2 (struct ibv_context*,TYPE_1__*,int,struct ibv_qp_open_attr*,struct ibv_open_qp*,int,struct ibv_create_qp_resp*,int) ; 

struct ibv_qp *FUNC3(struct ibv_context *context, struct ibv_qp_open_attr *attr)
{
	struct ibv_open_qp cmd;
	struct ibv_create_qp_resp resp;
	struct mlx4_qp *qp;
	int ret;

	qp = FUNC0(1, sizeof *qp);
	if (!qp)
		return NULL;

	ret = FUNC2(context, &qp->verbs_qp, sizeof(qp->verbs_qp), attr,
			      &cmd, sizeof cmd, &resp, sizeof resp);
	if (ret)
		goto err;

	return &qp->verbs_qp.qp;

err:
	FUNC1(qp);
	return NULL;
}
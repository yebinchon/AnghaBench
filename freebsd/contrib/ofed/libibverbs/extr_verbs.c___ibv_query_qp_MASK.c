#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_qp_init_attr {int dummy; } ;
struct ibv_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ibv_qp {int /*<<< orphan*/  state; TYPE_2__* context; } ;
struct TYPE_3__ {int (* query_qp ) (struct ibv_qp*,struct ibv_qp_attr*,int,struct ibv_qp_init_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int IBV_QP_STATE ; 
 int FUNC0 (struct ibv_qp*,struct ibv_qp_attr*,int,struct ibv_qp_init_attr*) ; 

int FUNC1(struct ibv_qp *qp, struct ibv_qp_attr *attr,
		   int attr_mask,
		   struct ibv_qp_init_attr *init_attr)
{
	int ret;

	ret = qp->context->ops.query_qp(qp, attr, attr_mask, init_attr);
	if (ret)
		return ret;

	if (attr_mask & IBV_QP_STATE)
		qp->state = attr->qp_state;

	return 0;
}
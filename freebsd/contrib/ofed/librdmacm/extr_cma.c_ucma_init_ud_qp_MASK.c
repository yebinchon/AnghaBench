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
struct ibv_qp_attr {scalar_t__ sq_psn; int /*<<< orphan*/  qp_state; } ;
struct ibv_qp {int dummy; } ;
struct cma_id_private {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IBV_QPS_INIT ; 
 int /*<<< orphan*/  IBV_QPS_RTR ; 
 int /*<<< orphan*/  IBV_QPS_RTS ; 
 int IBV_QP_SQ_PSN ; 
 int IBV_QP_STATE ; 
 int abi_ver ; 
 int FUNC1 (struct ibv_qp*,struct ibv_qp_attr*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ibv_qp_attr*,int*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct cma_id_private*,struct ibv_qp*) ; 

__attribute__((used)) static int FUNC5(struct cma_id_private *id_priv, struct ibv_qp *qp)
{
	struct ibv_qp_attr qp_attr;
	int qp_attr_mask, ret;

	if (abi_ver == 3)
		return FUNC4(id_priv, qp);

	qp_attr.qp_state = IBV_QPS_INIT;
	ret = FUNC2(&id_priv->id, &qp_attr, &qp_attr_mask);
	if (ret)
		return ret;

	ret = FUNC1(qp, &qp_attr, qp_attr_mask);
	if (ret)
		return FUNC0(ret);

	qp_attr.qp_state = IBV_QPS_RTR;
	ret = FUNC1(qp, &qp_attr, IBV_QP_STATE);
	if (ret)
		return FUNC0(ret);

	qp_attr.qp_state = IBV_QPS_RTS;
	qp_attr.sq_psn = 0;
	ret = FUNC1(qp, &qp_attr, IBV_QP_STATE | IBV_QP_SQ_PSN);
	return FUNC3(ret);
}
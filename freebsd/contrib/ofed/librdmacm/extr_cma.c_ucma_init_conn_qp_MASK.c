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
struct ibv_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ibv_qp {int dummy; } ;
struct cma_id_private {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QPS_INIT ; 
 int abi_ver ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_qp*,struct ibv_qp_attr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ibv_qp_attr*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cma_id_private*,struct ibv_qp*) ; 

__attribute__((used)) static int FUNC4(struct cma_id_private *id_priv, struct ibv_qp *qp)
{
	struct ibv_qp_attr qp_attr;
	int qp_attr_mask, ret;

	if (abi_ver == 3)
		return FUNC3(id_priv, qp);

	qp_attr.qp_state = IBV_QPS_INIT;
	ret = FUNC1(&id_priv->id, &qp_attr, &qp_attr_mask);
	if (ret)
		return ret;

	return FUNC2(FUNC0(qp, &qp_attr, qp_attr_mask));
}
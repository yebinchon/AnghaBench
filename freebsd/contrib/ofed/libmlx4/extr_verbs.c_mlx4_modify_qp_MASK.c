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
struct TYPE_2__ {scalar_t__ wqe_cnt; } ;
struct mlx4_qp {int qp_cap_cache; scalar_t__* db; TYPE_1__ rq; int /*<<< orphan*/  link_layer; } ;
struct ibv_qp_attr {scalar_t__ qp_state; int /*<<< orphan*/  port_num; } ;
struct ibv_qp {int qp_type; scalar_t__ state; scalar_t__ recv_cq; scalar_t__ send_cq; int /*<<< orphan*/  qp_num; scalar_t__ srq; int /*<<< orphan*/  context; } ;
struct ibv_port_attr {int /*<<< orphan*/  link_layer; } ;
struct ibv_modify_qp {int dummy; } ;
struct ibv_device_attr {int device_cap_flags; } ;
typedef  int /*<<< orphan*/  device_attr ;

/* Variables and functions */
 int IBV_DEVICE_RAW_IP_CSUM ; 
 int IBV_DEVICE_UD_IP_CSUM ; 
 int /*<<< orphan*/  IBV_LINK_LAYER_ETHERNET ; 
 int /*<<< orphan*/  IBV_LINK_LAYER_INFINIBAND ; 
 scalar_t__ IBV_QPS_INIT ; 
 scalar_t__ IBV_QPS_RESET ; 
#define  IBV_QPT_RAW_PACKET 129 
#define  IBV_QPT_UD 128 
 int IBV_QP_PORT ; 
 int IBV_QP_STATE ; 
 int MLX4_CSUM_SUPPORT_RAW_OVER_ETH ; 
 int MLX4_CSUM_SUPPORT_UD_OVER_IB ; 
 int MLX4_RX_CSUM_VALID ; 
 int FUNC0 (struct ibv_qp*,struct ibv_qp_attr*,int,struct ibv_modify_qp*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ibv_device_attr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibv_port_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_device_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_qp*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct mlx4_qp* FUNC8 (struct ibv_qp*) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 

int FUNC10(struct ibv_qp *qp, struct ibv_qp_attr *attr,
		    int attr_mask)
{
	struct ibv_modify_qp cmd = {};
	struct ibv_port_attr port_attr;
	struct mlx4_qp *mqp = FUNC8(qp);
	struct ibv_device_attr device_attr;
	int ret;

	FUNC3(&device_attr, 0, sizeof(device_attr));
	if (attr_mask & IBV_QP_PORT) {
		ret = FUNC2(qp->context, attr->port_num,
				     &port_attr);
		if (ret)
			return ret;
		mqp->link_layer = port_attr.link_layer;

		ret = FUNC1(qp->context, &device_attr);
		if (ret)
			return ret;

		switch(qp->qp_type) {
		case IBV_QPT_UD:
			if ((mqp->link_layer == IBV_LINK_LAYER_INFINIBAND) &&
			    (device_attr.device_cap_flags & IBV_DEVICE_UD_IP_CSUM))
				mqp->qp_cap_cache |= MLX4_CSUM_SUPPORT_UD_OVER_IB |
						MLX4_RX_CSUM_VALID;
			break;
		case IBV_QPT_RAW_PACKET:
			if ((mqp->link_layer == IBV_LINK_LAYER_ETHERNET) &&
			    (device_attr.device_cap_flags & IBV_DEVICE_RAW_IP_CSUM))
				mqp->qp_cap_cache |= MLX4_CSUM_SUPPORT_RAW_OVER_ETH |
						MLX4_RX_CSUM_VALID;
			break;
		default:
			break;
		}

	}

	if (qp->state == IBV_QPS_RESET &&
	    attr_mask & IBV_QP_STATE   &&
	    attr->qp_state == IBV_QPS_INIT) {
		FUNC6(FUNC8(qp));
	}

	ret = FUNC0(qp, attr, attr_mask, &cmd, sizeof cmd);

	if (!ret		       &&
	    (attr_mask & IBV_QP_STATE) &&
	    attr->qp_state == IBV_QPS_RESET) {
		if (qp->recv_cq)
			FUNC4(FUNC7(qp->recv_cq), qp->qp_num,
				      qp->srq ? FUNC9(qp->srq) : NULL);
		if (qp->send_cq && qp->send_cq != qp->recv_cq)
			FUNC4(FUNC7(qp->send_cq), qp->qp_num, NULL);

		FUNC5(FUNC8(qp));
		if (FUNC8(qp)->rq.wqe_cnt)
			*FUNC8(qp)->db = 0;
	}

	return ret;
}
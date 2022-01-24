#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rsn; } ;
struct mlx5_rwq {scalar_t__* db; TYPE_1__ rsc; } ;
struct mlx5_modify_wq {int /*<<< orphan*/  ibv_cmd; } ;
struct ibv_wq_attr {int attr_mask; scalar_t__ wq_state; scalar_t__ curr_wq_state; } ;
struct ibv_wq {scalar_t__ state; int /*<<< orphan*/  cq; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IBV_WQS_RDY ; 
 scalar_t__ IBV_WQS_RESET ; 
 int IBV_WQ_ATTR_CURR_STATE ; 
 int IBV_WQ_ATTR_STATE ; 
 size_t MLX5_RCV_DBR ; 
 size_t MLX5_SND_DBR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ibv_wq*,struct ibv_wq_attr*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_rwq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_rwq* FUNC6 (struct ibv_wq*) ; 

int FUNC7(struct ibv_wq *wq, struct ibv_wq_attr *attr)
{
	struct mlx5_modify_wq	cmd = {};
	struct mlx5_rwq *rwq = FUNC6(wq);

	if ((attr->attr_mask & IBV_WQ_ATTR_STATE) &&
	    attr->wq_state == IBV_WQS_RDY) {
		if ((attr->attr_mask & IBV_WQ_ATTR_CURR_STATE) &&
		    attr->curr_wq_state != wq->state)
			return -EINVAL;

		if (wq->state == IBV_WQS_RESET) {
			FUNC3(&FUNC5(wq->cq)->lock);
			FUNC0(FUNC5(wq->cq),
					rwq->rsc.rsn, NULL);
			FUNC4(&FUNC5(wq->cq)->lock);
			FUNC2(rwq);
			rwq->db[MLX5_RCV_DBR] = 0;
			rwq->db[MLX5_SND_DBR] = 0;
		}
	}

	return FUNC1(wq, attr, &cmd.ibv_cmd,  sizeof(cmd.ibv_cmd), sizeof(cmd));
}
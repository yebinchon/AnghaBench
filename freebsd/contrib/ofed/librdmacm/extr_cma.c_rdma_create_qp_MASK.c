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
struct rdma_cm_id {struct ibv_pd* pd; } ;
struct ibv_qp_init_attr_ex {struct ibv_pd* pd; int /*<<< orphan*/  comp_mask; } ;
struct ibv_qp_init_attr {struct ibv_pd* pd; int /*<<< orphan*/  comp_mask; } ;
struct ibv_pd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QP_INIT_ATTR_PD ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_qp_init_attr_ex*,struct ibv_qp_init_attr_ex*,int) ; 
 int FUNC1 (struct rdma_cm_id*,struct ibv_qp_init_attr_ex*) ; 

int FUNC2(struct rdma_cm_id *id, struct ibv_pd *pd,
		   struct ibv_qp_init_attr *qp_init_attr)
{
	struct ibv_qp_init_attr_ex attr_ex;
	int ret;

	FUNC0(&attr_ex, qp_init_attr, sizeof(*qp_init_attr));
	attr_ex.comp_mask = IBV_QP_INIT_ATTR_PD;
	attr_ex.pd = pd ? pd : id->pd;
	ret = FUNC1(id, &attr_ex);
	FUNC0(qp_init_attr, &attr_ex, sizeof(*qp_init_attr));
	return ret;
}
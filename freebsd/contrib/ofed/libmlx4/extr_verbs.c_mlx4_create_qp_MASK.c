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
struct ibv_qp_init_attr_ex {struct ibv_pd* pd; int /*<<< orphan*/  comp_mask; } ;
struct ibv_qp_init_attr {struct ibv_pd* pd; int /*<<< orphan*/  comp_mask; } ;
struct ibv_qp {int dummy; } ;
struct ibv_pd {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QP_INIT_ATTR_PD ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_qp_init_attr_ex*,struct ibv_qp_init_attr_ex*,int) ; 
 struct ibv_qp* FUNC1 (int /*<<< orphan*/ ,struct ibv_qp_init_attr_ex*) ; 

struct ibv_qp *FUNC2(struct ibv_pd *pd, struct ibv_qp_init_attr *attr)
{
	struct ibv_qp_init_attr_ex attr_ex;
	struct ibv_qp *qp;

	FUNC0(&attr_ex, attr, sizeof *attr);
	attr_ex.comp_mask = IBV_QP_INIT_ATTR_PD;
	attr_ex.pd = pd;
	qp = FUNC1(pd->context, &attr_ex);
	if (qp)
		FUNC0(attr, &attr_ex, sizeof *attr);
	return qp;
}
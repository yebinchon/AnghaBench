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
typedef  int /*<<< orphan*/  attrx ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_QP_INIT_ATTR_PD ; 
 struct ibv_qp* FUNC0 (int /*<<< orphan*/ ,struct ibv_qp_init_attr_ex*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_qp_init_attr_ex*,struct ibv_qp_init_attr_ex*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_qp_init_attr_ex*,int /*<<< orphan*/ ,int) ; 

struct ibv_qp *FUNC3(struct ibv_pd *pd,
			      struct ibv_qp_init_attr *attr)
{
	struct ibv_qp *qp;
	struct ibv_qp_init_attr_ex attrx;

	FUNC2(&attrx, 0, sizeof(attrx));
	FUNC1(&attrx, attr, sizeof(*attr));
	attrx.comp_mask = IBV_QP_INIT_ATTR_PD;
	attrx.pd = pd;
	qp = FUNC0(pd->context, &attrx);
	if (qp)
		FUNC1(attr, &attrx, sizeof(*attr));

	return qp;
}
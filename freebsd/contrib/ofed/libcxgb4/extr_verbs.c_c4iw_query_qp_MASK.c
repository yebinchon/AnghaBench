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
struct ibv_query_qp {int dummy; } ;
struct ibv_qp_init_attr {int dummy; } ;
struct ibv_qp_attr {int dummy; } ;
struct ibv_qp {int dummy; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_qp*) ; 
 int FUNC1 (struct ibv_qp*,struct ibv_qp_attr*,int,struct ibv_qp_init_attr*,struct ibv_query_qp*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct c4iw_qp* FUNC5 (struct ibv_qp*) ; 

int FUNC6(struct ibv_qp *ibqp, struct ibv_qp_attr *attr,
		  int attr_mask, struct ibv_qp_init_attr *init_attr)
{
	struct ibv_query_qp cmd;
	struct c4iw_qp *qhp = FUNC5(ibqp);
	int ret;

	FUNC2(&qhp->lock);
	if (FUNC4(&qhp->wq))
		FUNC0(qhp);
	ret = FUNC1(ibqp, attr, attr_mask, init_attr, &cmd, sizeof cmd);
	FUNC3(&qhp->lock);
	return ret;
}
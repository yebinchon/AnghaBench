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
typedef  union ibv_gid {int dummy; } ibv_gid ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ibv_qp {int dummy; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_qp*) ; 
 int FUNC1 (struct ibv_qp*,union ibv_gid const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct c4iw_qp* FUNC5 (struct ibv_qp*) ; 

int FUNC6(struct ibv_qp *ibqp, const union ibv_gid *gid,
		      uint16_t lid)
{
	struct c4iw_qp *qhp = FUNC5(ibqp);
	int ret;

	FUNC2(&qhp->lock);
	if (FUNC4(&qhp->wq))
		FUNC0(qhp);
	ret = FUNC1(ibqp, gid, lid);
	FUNC3(&qhp->lock);
	return ret;
}
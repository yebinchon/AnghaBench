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
struct mlx4_qp {int dummy; } ;
struct mlx4_cq {int /*<<< orphan*/  lock; } ;
struct ibv_wc {int dummy; } ;
struct ibv_cq {int dummy; } ;

/* Variables and functions */
 int CQ_OK ; 
 int CQ_POLL_ERR ; 
 int FUNC0 (struct mlx4_cq*,struct mlx4_qp**,struct ibv_wc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx4_cq* FUNC4 (struct ibv_cq*) ; 

int FUNC5(struct ibv_cq *ibcq, int ne, struct ibv_wc *wc)
{
	struct mlx4_cq *cq = FUNC4(ibcq);
	struct mlx4_qp *qp = NULL;
	int npolled;
	int err = CQ_OK;

	FUNC2(&cq->lock);

	for (npolled = 0; npolled < ne; ++npolled) {
		err = FUNC0(cq, &qp, wc + npolled);
		if (err != CQ_OK)
			break;
	}

	if (npolled || err == CQ_POLL_ERR)
		FUNC1(cq);

	FUNC3(&cq->lock);

	return err == CQ_POLL_ERR ? err : npolled;
}
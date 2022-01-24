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
struct TYPE_2__ {int /*<<< orphan*/  srq_num; int /*<<< orphan*/  cq; } ;
struct mlx4_srq {struct mlx4_srq* wrid; int /*<<< orphan*/  buf; int /*<<< orphan*/  db; TYPE_1__ verbs_srq; } ;
struct mlx4_cq {int /*<<< orphan*/  lock; } ;
struct mlx4_context {int /*<<< orphan*/  xsrq_table; } ;
struct ibv_srq {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DB_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_srq*) ; 
 int FUNC1 (struct ibv_srq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_cq*,int /*<<< orphan*/ ,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_cq* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx4_context* FUNC10 (int /*<<< orphan*/ ) ; 
 struct mlx4_srq* FUNC11 (struct ibv_srq*) ; 

int FUNC12(struct ibv_srq *srq)
{
	struct mlx4_context *mctx = FUNC10(srq->context);
	struct mlx4_srq *msrq = FUNC11(srq);
	struct mlx4_cq *mcq;
	int ret;

	mcq = FUNC9(msrq->verbs_srq.cq);
	FUNC3(mcq, 0, msrq);
	FUNC7(&mcq->lock);
	FUNC2(&mctx->xsrq_table, msrq->verbs_srq.srq_num);
	FUNC8(&mcq->lock);

	ret = FUNC1(srq);
	if (ret) {
		FUNC7(&mcq->lock);
		FUNC6(&mctx->xsrq_table, msrq->verbs_srq.srq_num, msrq);
		FUNC8(&mcq->lock);
		return ret;
	}

	FUNC5(mctx, MLX4_DB_TYPE_RQ, msrq->db);
	FUNC4(&msrq->buf);
	FUNC0(msrq->wrid);
	FUNC0(msrq);

	return 0;
}
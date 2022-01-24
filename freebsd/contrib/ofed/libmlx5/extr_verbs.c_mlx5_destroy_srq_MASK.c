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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  rsn; } ;
struct mlx5_srq {struct mlx5_srq* wrid; int /*<<< orphan*/  buf; int /*<<< orphan*/  db; int /*<<< orphan*/  srqn; TYPE_1__ rsc; } ;
struct mlx5_context {scalar_t__ cqe_version; } ;
struct ibv_srq {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 scalar_t__ MLX5_RSC_TYPE_XSRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_srq*) ; 
 int FUNC1 (struct ibv_srq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 struct mlx5_context* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mlx5_srq* FUNC7 (struct ibv_srq*) ; 

int FUNC8(struct ibv_srq *srq)
{
	int ret;
	struct mlx5_srq *msrq = FUNC7(srq);
	struct mlx5_context *ctx = FUNC6(srq->context);

	ret = FUNC1(srq);
	if (ret)
		return ret;

	if (ctx->cqe_version && msrq->rsc.type == MLX5_RSC_TYPE_XSRQ)
		FUNC3(ctx, msrq->rsc.rsn);
	else
		FUNC2(ctx, msrq->srqn);

	FUNC5(ctx, msrq->db);
	FUNC4(&msrq->buf);
	FUNC0(msrq->wrid);
	FUNC0(msrq);

	return 0;
}
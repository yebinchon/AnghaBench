#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rsn; } ;
struct TYPE_5__ {scalar_t__ wqe_cnt; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; } ;
struct mlx5_qp {int /*<<< orphan*/  db; TYPE_3__ rsc; TYPE_2__ rq; TYPE_1__ sq; scalar_t__ rss_qp; } ;
struct mlx5_context {int /*<<< orphan*/  qp_table_mutex; int /*<<< orphan*/  cqe_version; } ;
struct ibv_qp {scalar_t__ recv_cq; scalar_t__ send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  qp_num; scalar_t__ srq; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_qp*) ; 
 int FUNC2 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_qp*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 struct mlx5_context* FUNC13 (int /*<<< orphan*/ ) ; 
 struct mlx5_qp* FUNC14 (struct ibv_qp*) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__) ; 

int FUNC16(struct ibv_qp *ibqp)
{
	struct mlx5_qp *qp = FUNC14(ibqp);
	struct mlx5_context *ctx = FUNC13(ibqp->context);
	int ret;

	if (qp->rss_qp) {
		ret = FUNC2(ibqp);
		if (ret)
			return ret;
		goto free;
	}

	if (!ctx->cqe_version)
		FUNC10(&ctx->qp_table_mutex);

	ret = FUNC2(ibqp);
	if (ret) {
		if (!ctx->cqe_version)
			FUNC11(&ctx->qp_table_mutex);
		return ret;
	}

	FUNC8(ibqp);

	FUNC0(FUNC12(ibqp->recv_cq), qp->rsc.rsn,
			ibqp->srq ? FUNC15(ibqp->srq) : NULL);
	if (ibqp->send_cq != ibqp->recv_cq)
		FUNC0(FUNC12(ibqp->send_cq), qp->rsc.rsn, NULL);

	if (!ctx->cqe_version) {
		if (qp->sq.wqe_cnt || qp->rq.wqe_cnt)
			FUNC4(ctx, ibqp->qp_num);
	}

	FUNC9(ibqp);
	if (!ctx->cqe_version)
		FUNC11(&ctx->qp_table_mutex);
	else if (!FUNC3(ibqp->qp_type))
		FUNC5(ctx, qp->rsc.rsn);

	FUNC6(ctx, qp->db);
	FUNC7(qp);
free:
	FUNC1(qp);

	return 0;
}
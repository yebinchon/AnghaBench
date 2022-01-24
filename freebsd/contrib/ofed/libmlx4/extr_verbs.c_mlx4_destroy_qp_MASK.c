#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct mlx4_qp* wrid; scalar_t__ wqe_cnt; } ;
struct TYPE_6__ {struct mlx4_qp* wrid; scalar_t__ wqe_cnt; } ;
struct mlx4_qp {int /*<<< orphan*/  buf; TYPE_2__ sq; TYPE_1__ rq; int /*<<< orphan*/  db; } ;
struct ibv_qp {scalar_t__ recv_cq; scalar_t__ send_cq; int /*<<< orphan*/  context; int /*<<< orphan*/  qp_num; scalar_t__ srq; } ;
struct TYPE_8__ {int /*<<< orphan*/  qp_table_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DB_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_qp*) ; 
 int FUNC2 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibv_qp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 struct mlx4_qp* FUNC12 (struct ibv_qp*) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 

int FUNC14(struct ibv_qp *ibqp)
{
	struct mlx4_qp *qp = FUNC12(ibqp);
	int ret;

	FUNC8(&FUNC11(ibqp->context)->qp_table_mutex);
	ret = FUNC2(ibqp);
	if (ret) {
		FUNC9(&FUNC11(ibqp->context)->qp_table_mutex);
		return ret;
	}

	FUNC6(ibqp);

	if (ibqp->recv_cq)
		FUNC0(FUNC10(ibqp->recv_cq), ibqp->qp_num,
				ibqp->srq ? FUNC13(ibqp->srq) : NULL);
	if (ibqp->send_cq && ibqp->send_cq != ibqp->recv_cq)
		FUNC0(FUNC10(ibqp->send_cq), ibqp->qp_num, NULL);

	if (qp->sq.wqe_cnt || qp->rq.wqe_cnt)
		FUNC3(FUNC11(ibqp->context), ibqp->qp_num);

	FUNC7(ibqp);
	FUNC9(&FUNC11(ibqp->context)->qp_table_mutex);

	if (qp->rq.wqe_cnt) {
		FUNC5(FUNC11(ibqp->context), MLX4_DB_TYPE_RQ, qp->db);
		FUNC1(qp->rq.wrid);
	}
	if (qp->sq.wqe_cnt)
		FUNC1(qp->sq.wrid);
	FUNC4(&qp->buf);
	FUNC1(qp);

	return 0;
}
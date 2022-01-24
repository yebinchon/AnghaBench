#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ wr_data; scalar_t__ wrid; scalar_t__ wqe_head; } ;
struct TYPE_5__ {scalar_t__ wrid; } ;
struct TYPE_8__ {scalar_t__ buf; } ;
struct mlx5_qp {TYPE_2__ sq; TYPE_1__ rq; TYPE_4__ sq_buf; TYPE_4__ buf; TYPE_3__* ibv_qp; } ;
struct mlx5_context {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_context*,TYPE_4__*) ; 
 struct mlx5_context* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_qp *qp)
{
	struct mlx5_context *ctx = FUNC2(qp->ibv_qp->context);

	FUNC1(ctx, &qp->buf);

	if (qp->sq_buf.buf)
		FUNC1(ctx, &qp->sq_buf);

	if (qp->rq.wrid)
		FUNC0(qp->rq.wrid);

	if (qp->sq.wqe_head)
		FUNC0(qp->sq.wqe_head);

	if (qp->sq.wrid)
		FUNC0(qp->sq.wrid);

	if (qp->sq.wr_data)
		FUNC0(qp->sq.wr_data);
}
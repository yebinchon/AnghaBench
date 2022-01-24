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
typedef  int /*<<< orphan*/  uint64_t ;
struct mlx4_wqe_data_seg {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {int max_gs; int wqe_cnt; int wqe_shift; int offset; void* wrid; } ;
struct TYPE_5__ {int wqe_cnt; int wqe_shift; int offset; void* wrid; } ;
struct mlx4_qp {int buf_size; TYPE_4__ buf; TYPE_2__ rq; TYPE_1__ sq; } ;
struct ibv_qp_cap {int max_recv_sge; } ;
struct ibv_context {int /*<<< orphan*/  device; } ;
typedef  enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;
struct TYPE_7__ {int /*<<< orphan*/  page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ibv_context *context, struct ibv_qp_cap *cap,
		       enum ibv_qp_type type, struct mlx4_qp *qp)
{
	qp->rq.max_gs	 = cap->max_recv_sge;

	if (qp->sq.wqe_cnt) {
		qp->sq.wrid = FUNC2(qp->sq.wqe_cnt * sizeof (uint64_t));
		if (!qp->sq.wrid)
			return -1;
	}

	if (qp->rq.wqe_cnt) {
		qp->rq.wrid = FUNC2(qp->rq.wqe_cnt * sizeof (uint64_t));
		if (!qp->rq.wrid) {
			FUNC1(qp->sq.wrid);
			return -1;
		}
	}

	for (qp->rq.wqe_shift = 4;
	     1 << qp->rq.wqe_shift < qp->rq.max_gs * sizeof (struct mlx4_wqe_data_seg);
	     qp->rq.wqe_shift++)
		; /* nothing */

	qp->buf_size = (qp->rq.wqe_cnt << qp->rq.wqe_shift) +
		(qp->sq.wqe_cnt << qp->sq.wqe_shift);
	if (qp->rq.wqe_shift > qp->sq.wqe_shift) {
		qp->rq.offset = 0;
		qp->sq.offset = qp->rq.wqe_cnt << qp->rq.wqe_shift;
	} else {
		qp->rq.offset = qp->sq.wqe_cnt << qp->sq.wqe_shift;
		qp->sq.offset = 0;
	}

	if (qp->buf_size) {
		if (FUNC4(&qp->buf,
				   FUNC0(qp->buf_size, FUNC5(context->device)->page_size),
				   FUNC5(context->device)->page_size)) {
			FUNC1(qp->sq.wrid);
			FUNC1(qp->rq.wrid);
			return -1;
		}

		FUNC3(qp->buf.buf, 0, qp->buf_size);
	} else {
		qp->buf.buf = NULL;
	}

	return 0;
}
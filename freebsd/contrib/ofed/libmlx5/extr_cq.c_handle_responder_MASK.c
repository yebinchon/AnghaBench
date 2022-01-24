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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct mlx5_wq {int tail; int wqe_cnt; int /*<<< orphan*/ * wrid; } ;
struct mlx5_srq {int /*<<< orphan*/ * wrid; } ;
struct mlx5_resource {scalar_t__ type; } ;
struct mlx5_qp {int qp_cap_cache; struct mlx5_wq rq; } ;
struct mlx5_cqe64 {int byte_cnt; int op_own; int hds_ip_ext; int imm_inval_pkey; int flags_rqpn; int ml_path; int /*<<< orphan*/  slid; int /*<<< orphan*/  wqe_counter; } ;
struct ibv_wc {int byte_len; int wc_flags; int imm_data; int sl; int src_qp; int dlid_path_bits; int pkey_index; void* slid; void* opcode; int /*<<< orphan*/  wr_id; } ;
struct TYPE_2__ {struct mlx5_wq rq; } ;

/* Variables and functions */
 int IBV_WC_GRH ; 
 int IBV_WC_IP_CSUM_OK_SHIFT ; 
 void* IBV_WC_RECV ; 
 void* IBV_WC_RECV_RDMA_WITH_IMM ; 
 int IBV_WC_SUCCESS ; 
 int IBV_WC_WITH_IMM ; 
 int IBV_WC_WITH_INV ; 
 scalar_t__ MLX5_CQE_L3_HDR_TYPE_IPV4 ; 
 int MLX5_CQE_L3_OK ; 
 int MLX5_CQE_L4_OK ; 
#define  MLX5_CQE_RESP_SEND 131 
#define  MLX5_CQE_RESP_SEND_IMM 130 
#define  MLX5_CQE_RESP_SEND_INV 129 
#define  MLX5_CQE_RESP_WR_IMM 128 
 int MLX5_INLINE_SCATTER_32 ; 
 int MLX5_INLINE_SCATTER_64 ; 
 scalar_t__ MLX5_RSC_TYPE_QP ; 
 int MLX5_RX_CSUM_VALID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlx5_cqe64*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct mlx5_srq*,size_t,struct mlx5_cqe64*,int) ; 
 int FUNC5 (struct mlx5_qp*,size_t,struct mlx5_cqe64*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_srq*,size_t) ; 
 struct mlx5_qp* FUNC7 (struct mlx5_resource*) ; 
 TYPE_1__* FUNC8 (struct mlx5_resource*) ; 

__attribute__((used)) static inline int FUNC9(struct ibv_wc *wc, struct mlx5_cqe64 *cqe,
				   struct mlx5_resource *cur_rsc, struct mlx5_srq *srq)
{
	uint16_t	wqe_ctr;
	struct mlx5_wq *wq;
	struct mlx5_qp *qp = FUNC7(cur_rsc);
	uint8_t g;
	int err = 0;

	wc->byte_len = FUNC1(cqe->byte_cnt);
	if (srq) {
		wqe_ctr = FUNC0(cqe->wqe_counter);
		wc->wr_id = srq->wrid[wqe_ctr];
		FUNC6(srq, wqe_ctr);
		if (cqe->op_own & MLX5_INLINE_SCATTER_32)
			err = FUNC4(srq, wqe_ctr, cqe,
						    wc->byte_len);
		else if (cqe->op_own & MLX5_INLINE_SCATTER_64)
			err = FUNC4(srq, wqe_ctr, cqe - 1,
						    wc->byte_len);
	} else {
		if (FUNC3(cur_rsc->type == MLX5_RSC_TYPE_QP)) {
			wq = &qp->rq;
			if (qp->qp_cap_cache & MLX5_RX_CSUM_VALID)
				wc->wc_flags |= (!!(cqe->hds_ip_ext & MLX5_CQE_L4_OK) &
						 !!(cqe->hds_ip_ext & MLX5_CQE_L3_OK) &
						(FUNC2(cqe) ==
						MLX5_CQE_L3_HDR_TYPE_IPV4)) <<
						IBV_WC_IP_CSUM_OK_SHIFT;
		} else {
			wq = &(FUNC8(cur_rsc)->rq);
		}

		wqe_ctr = wq->tail & (wq->wqe_cnt - 1);
		wc->wr_id = wq->wrid[wqe_ctr];
		++wq->tail;
		if (cqe->op_own & MLX5_INLINE_SCATTER_32)
			err = FUNC5(qp, wqe_ctr, cqe,
						    wc->byte_len);
		else if (cqe->op_own & MLX5_INLINE_SCATTER_64)
			err = FUNC5(qp, wqe_ctr, cqe - 1,
						    wc->byte_len);
	}
	if (err)
		return err;

	switch (cqe->op_own >> 4) {
	case MLX5_CQE_RESP_WR_IMM:
		wc->opcode	= IBV_WC_RECV_RDMA_WITH_IMM;
		wc->wc_flags	|= IBV_WC_WITH_IMM;
		wc->imm_data = cqe->imm_inval_pkey;
		break;
	case MLX5_CQE_RESP_SEND:
		wc->opcode   = IBV_WC_RECV;
		break;
	case MLX5_CQE_RESP_SEND_IMM:
		wc->opcode	= IBV_WC_RECV;
		wc->wc_flags	|= IBV_WC_WITH_IMM;
		wc->imm_data = cqe->imm_inval_pkey;
		break;
	case MLX5_CQE_RESP_SEND_INV:
		wc->opcode = IBV_WC_RECV;
		wc->wc_flags |= IBV_WC_WITH_INV;
		wc->imm_data = FUNC1(cqe->imm_inval_pkey);
		break;
	}
	wc->slid	   = FUNC0(cqe->slid);
	wc->sl		   = (FUNC1(cqe->flags_rqpn) >> 24) & 0xf;
	wc->src_qp	   = FUNC1(cqe->flags_rqpn) & 0xffffff;
	wc->dlid_path_bits = cqe->ml_path & 0x7f;
	g = (FUNC1(cqe->flags_rqpn) >> 28) & 3;
	wc->wc_flags |= g ? IBV_WC_GRH : 0;
	wc->pkey_index     = FUNC1(cqe->imm_inval_pkey) & 0xffff;

	return IBV_WC_SUCCESS;
}
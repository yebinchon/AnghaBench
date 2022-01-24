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
struct mlx5_wqe_inl_data_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_qp {int max_tso_header; } ;
struct mlx5_context {int max_sq_desc_sz; } ;
struct TYPE_2__ {int max_inline_data; int max_send_sge; } ;
struct ibv_qp_init_attr_ex {int comp_mask; int max_tso_header; TYPE_1__ cap; int /*<<< orphan*/  qp_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int IBV_QP_INIT_ATTR_MAX_TSO_HEADER ; 
 int MLX5_SEND_WQE_BB ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx5_context *ctx,
			      struct ibv_qp_init_attr_ex *attr,
			      struct mlx5_qp *qp)
{
	int size;
	int inl_size = 0;
	int max_gather;
	int tot_size;

	size = FUNC2(attr->qp_type);
	if (size < 0)
		return size;

	if (attr->cap.max_inline_data) {
		inl_size = size + FUNC0(sizeof(struct mlx5_wqe_inl_data_seg) +
			attr->cap.max_inline_data, 16);
	}

	if (attr->comp_mask & IBV_QP_INIT_ATTR_MAX_TSO_HEADER) {
		size += FUNC0(attr->max_tso_header, 16);
		qp->max_tso_header = attr->max_tso_header;
	}

	max_gather = (ctx->max_sq_desc_sz - size) /
		sizeof(struct mlx5_wqe_data_seg);
	if (attr->cap.max_send_sge > max_gather)
		return -EINVAL;

	size += attr->cap.max_send_sge * sizeof(struct mlx5_wqe_data_seg);
	tot_size = FUNC1(size, inl_size);

	if (tot_size > ctx->max_sq_desc_sz)
		return -EINVAL;

	return FUNC0(tot_size, MLX5_SEND_WQE_BB);
}
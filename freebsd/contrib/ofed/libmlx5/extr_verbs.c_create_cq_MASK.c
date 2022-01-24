#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5dv_cq_init_attr {int comp_mask; int cqe_comp_res_format; } ;
struct mlx5_create_cq_resp {int /*<<< orphan*/  cqn; int /*<<< orphan*/  ibv_resp; } ;
struct mlx5_create_cq {uintptr_t buf_addr; uintptr_t db_addr; int cqe_size; int cqe_comp_en; int cqe_comp_res_format; int /*<<< orphan*/  ibv_cmd; } ;
struct TYPE_5__ {scalar_t__ buf; } ;
struct ibv_cq_ex {int dummy; } ;
struct mlx5_cq {int cqe_sz; int flags; int /*<<< orphan*/  lock; TYPE_2__ buf_a; scalar_t__* dbrec; struct ibv_cq_ex ibv_cq; int /*<<< orphan*/  stall_cycles; int /*<<< orphan*/  stall_adaptive_enable; int /*<<< orphan*/  stall_enable; int /*<<< orphan*/  cqn; int /*<<< orphan*/ * resize_buf; TYPE_2__* active_buf; scalar_t__ arm_sn; scalar_t__ cons_index; } ;
struct TYPE_4__ {int supported_format; scalar_t__ max_num; } ;
struct mlx5_context {int /*<<< orphan*/  stall_cycles; int /*<<< orphan*/  stall_adaptive_enable; int /*<<< orphan*/  stall_enable; TYPE_1__ cqe_comp_caps; int /*<<< orphan*/ * dbg_fp; } ;
struct ibv_cq_init_attr_ex {int cqe; int comp_mask; int flags; int wc_flags; int /*<<< orphan*/  comp_vector; int /*<<< orphan*/  channel; } ;
struct ibv_context {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CREATE_CQ_SUPPORTED_COMP_MASK ; 
 int CREATE_CQ_SUPPORTED_FLAGS ; 
 int CREATE_CQ_SUPPORTED_WC_FLAGS ; 
 int EINVAL ; 
 int ENOTSUP ; 
 int IBV_CQ_INIT_ATTR_MASK_FLAGS ; 
 int IBV_CREATE_CQ_ATTR_SINGLE_THREADED ; 
 int MLX5DV_CQ_INIT_ATTR_MASK_COMPRESSED_CQE ; 
 int MLX5DV_CQ_INIT_ATTR_MASK_RESERVED ; 
 size_t MLX5_CQ_ARM_DB ; 
 int MLX5_CQ_FLAGS_EXTENDED ; 
 int MLX5_CQ_FLAGS_SINGLE_THREADED ; 
 size_t MLX5_CQ_SET_CI ; 
 int /*<<< orphan*/  MLX5_DBG_CQ ; 
 int FUNC0 (int) ; 
 struct mlx5_cq* FUNC1 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_cq*) ; 
 int FUNC3 () ; 
 int FUNC4 (struct ibv_context*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ibv_cq_ex*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_create_cq*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct mlx5_context*,struct mlx5_cq*,TYPE_2__*,int,int) ; 
 scalar_t__* FUNC8 (struct mlx5_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_cq*,struct ibv_cq_init_attr_ex const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_context*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_context*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 struct mlx5_context* FUNC15 (struct ibv_context*) ; 

__attribute__((used)) static struct ibv_cq_ex *FUNC16(struct ibv_context *context,
				   const struct ibv_cq_init_attr_ex *cq_attr,
				   int cq_alloc_flags,
				   struct mlx5dv_cq_init_attr *mlx5cq_attr)
{
	struct mlx5_create_cq		cmd;
	struct mlx5_create_cq_resp	resp;
	struct mlx5_cq		       *cq;
	int				cqe_sz;
	int				ret;
	int				ncqe;
	struct mlx5_context *mctx = FUNC15(context);
	FILE *fp = FUNC15(context)->dbg_fp;

	if (!cq_attr->cqe) {
		FUNC10(fp, MLX5_DBG_CQ, "CQE invalid\n");
		errno = EINVAL;
		return NULL;
	}

	if (cq_attr->comp_mask & ~CREATE_CQ_SUPPORTED_COMP_MASK) {
		FUNC10(fp, MLX5_DBG_CQ,
			 "Unsupported comp_mask for create_cq\n");
		errno = EINVAL;
		return NULL;
	}

	if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
	    cq_attr->flags & ~CREATE_CQ_SUPPORTED_FLAGS) {
		FUNC10(fp, MLX5_DBG_CQ,
			 "Unsupported creation flags requested for create_cq\n");
		errno = EINVAL;
		return NULL;
	}

	if (cq_attr->wc_flags & ~CREATE_CQ_SUPPORTED_WC_FLAGS) {
		FUNC10(fp, MLX5_DBG_CQ, "\n");
		errno = ENOTSUP;
		return NULL;
	}

	cq =  FUNC1(1, sizeof *cq);
	if (!cq) {
		FUNC10(fp, MLX5_DBG_CQ, "\n");
		return NULL;
	}

	FUNC6(&cmd, 0, sizeof cmd);
	cq->cons_index = 0;

	if (FUNC14(&cq->lock))
		goto err;

	ncqe = FUNC0(cq_attr->cqe + 1);
	if ((ncqe > (1 << 24)) || (ncqe < (cq_attr->cqe + 1))) {
		FUNC10(fp, MLX5_DBG_CQ, "ncqe %d\n", ncqe);
		errno = EINVAL;
		goto err_spl;
	}

	cqe_sz = FUNC3();
	if (cqe_sz < 0) {
		FUNC10(fp, MLX5_DBG_CQ, "\n");
		errno = -cqe_sz;
		goto err_spl;
	}

	if (FUNC7(FUNC15(context), cq, &cq->buf_a, ncqe, cqe_sz)) {
		FUNC10(fp, MLX5_DBG_CQ, "\n");
		goto err_spl;
	}

	cq->dbrec  = FUNC8(FUNC15(context));
	if (!cq->dbrec) {
		FUNC10(fp, MLX5_DBG_CQ, "\n");
		goto err_buf;
	}

	cq->dbrec[MLX5_CQ_SET_CI]	= 0;
	cq->dbrec[MLX5_CQ_ARM_DB]	= 0;
	cq->arm_sn			= 0;
	cq->cqe_sz			= cqe_sz;
	cq->flags			= cq_alloc_flags;

	if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
	    cq_attr->flags & IBV_CREATE_CQ_ATTR_SINGLE_THREADED)
		cq->flags |= MLX5_CQ_FLAGS_SINGLE_THREADED;
	cmd.buf_addr = (uintptr_t) cq->buf_a.buf;
	cmd.db_addr  = (uintptr_t) cq->dbrec;
	cmd.cqe_size = cqe_sz;

	if (mlx5cq_attr) {
		if (mlx5cq_attr->comp_mask & ~(MLX5DV_CQ_INIT_ATTR_MASK_RESERVED - 1)) {
			FUNC10(fp, MLX5_DBG_CQ,
				   "Unsupported vendor comp_mask for create_cq\n");
			errno = EINVAL;
			goto err_db;
		}

		if (mlx5cq_attr->comp_mask & MLX5DV_CQ_INIT_ATTR_MASK_COMPRESSED_CQE) {
			if (mctx->cqe_comp_caps.max_num &&
			    (mlx5cq_attr->cqe_comp_res_format &
			     mctx->cqe_comp_caps.supported_format)) {
				cmd.cqe_comp_en = 1;
				cmd.cqe_comp_res_format = mlx5cq_attr->cqe_comp_res_format;
			} else {
				FUNC10(fp, MLX5_DBG_CQ, "CQE Compression is not supported\n");
				errno = EINVAL;
				goto err_db;
			}
		}
	}

	ret = FUNC4(context, ncqe - 1, cq_attr->channel,
				cq_attr->comp_vector,
				FUNC5(&cq->ibv_cq), &cmd.ibv_cmd,
				sizeof(cmd), &resp.ibv_resp, sizeof(resp));
	if (ret) {
		FUNC10(fp, MLX5_DBG_CQ, "ret %d\n", ret);
		goto err_db;
	}

	cq->active_buf = &cq->buf_a;
	cq->resize_buf = NULL;
	cq->cqn = resp.cqn;
	cq->stall_enable = FUNC15(context)->stall_enable;
	cq->stall_adaptive_enable = FUNC15(context)->stall_adaptive_enable;
	cq->stall_cycles = FUNC15(context)->stall_cycles;

	if (cq_alloc_flags & MLX5_CQ_FLAGS_EXTENDED)
		FUNC9(cq, cq_attr);

	return &cq->ibv_cq;

err_db:
	FUNC12(FUNC15(context), cq->dbrec);

err_buf:
	FUNC11(FUNC15(context), &cq->buf_a);

err_spl:
	FUNC13(&cq->lock);

err:
	FUNC2(cq);

	return NULL;
}
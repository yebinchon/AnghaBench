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
struct ibv_cq_ex {int dummy; } ;
struct mlx4_cq {int arm_sn; int flags; int /*<<< orphan*/  buf; scalar_t__* set_ci_db; struct ibv_cq_ex ibv_cq; scalar_t__* arm_db; int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  lock; scalar_t__ cons_index; } ;
struct mlx4_context {int /*<<< orphan*/  cqe_size; } ;
struct ibv_cq_init_attr_ex {int cqe; int comp_mask; int flags; int wc_flags; } ;
struct ibv_context {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int CREATE_CQ_SUPPORTED_COMP_MASK ; 
 int CREATE_CQ_SUPPORTED_FLAGS ; 
 int CREATE_CQ_SUPPORTED_WC_FLAGS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int IBV_CQ_INIT_ATTR_MASK_FLAGS ; 
 int IBV_CREATE_CQ_ATTR_SINGLE_THREADED ; 
 int IBV_WC_EX_WITH_COMPLETION_TIMESTAMP ; 
 int IBV_WC_EX_WITH_SL ; 
 int IBV_WC_EX_WITH_SLID ; 
 int MLX4_CQ_FLAGS_EXTENDED ; 
 int MLX4_CQ_FLAGS_SINGLE_THREADED ; 
 int /*<<< orphan*/  MLX4_DB_TYPE_CQ ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_cq*) ; 
 struct mlx4_cq* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (struct mlx4_context*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ibv_context*,struct ibv_cq_init_attr_ex*,struct mlx4_cq*) ; 
 int FUNC6 (struct ibv_context*,struct ibv_cq_init_attr_ex*,struct mlx4_cq*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_cq*,struct ibv_cq_init_attr_ex*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_context*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx4_context* FUNC11 (struct ibv_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ibv_cq_ex *FUNC13(struct ibv_context *context,
				   struct ibv_cq_init_attr_ex *cq_attr,
				   int cq_alloc_flags)
{
	struct mlx4_cq      *cq;
	int                  ret;
	struct mlx4_context *mctx = FUNC11(context);

	/* Sanity check CQ size before proceeding */
	if (cq_attr->cqe > 0x3fffff) {
		errno = EINVAL;
		return NULL;
	}

	if (cq_attr->comp_mask & ~CREATE_CQ_SUPPORTED_COMP_MASK) {
		errno = ENOTSUP;
		return NULL;
	}

	if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
	    cq_attr->flags & ~CREATE_CQ_SUPPORTED_FLAGS) {
		errno = ENOTSUP;
		return NULL;
	}

	if (cq_attr->wc_flags & ~CREATE_CQ_SUPPORTED_WC_FLAGS)
		return NULL;

	/* mlx4 devices don't support slid and sl in cqe when completion
	 * timestamp is enabled in the CQ
	*/
	if ((cq_attr->wc_flags & (IBV_WC_EX_WITH_SLID | IBV_WC_EX_WITH_SL)) &&
	    (cq_attr->wc_flags & IBV_WC_EX_WITH_COMPLETION_TIMESTAMP)) {
		errno = ENOTSUP;
		return NULL;
	}

	cq = FUNC2(sizeof *cq);
	if (!cq)
		return NULL;

	cq->cons_index = 0;

	if (FUNC10(&cq->lock, PTHREAD_PROCESS_PRIVATE))
		goto err;

	cq_attr->cqe = FUNC0(cq_attr->cqe + 1);

	if (FUNC3(FUNC12(context->device), &cq->buf, cq_attr->cqe, mctx->cqe_size))
		goto err;

	cq->cqe_size = mctx->cqe_size;
	cq->set_ci_db  = FUNC4(FUNC11(context), MLX4_DB_TYPE_CQ);
	if (!cq->set_ci_db)
		goto err_buf;

	cq->arm_db     = cq->set_ci_db + 1;
	*cq->arm_db    = 0;
	cq->arm_sn     = 1;
	*cq->set_ci_db = 0;
	cq->flags = cq_alloc_flags;

	if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
	    cq_attr->flags & IBV_CREATE_CQ_ATTR_SINGLE_THREADED)
		cq->flags |= MLX4_CQ_FLAGS_SINGLE_THREADED;

	--cq_attr->cqe;
	if (cq_alloc_flags & MLX4_CQ_FLAGS_EXTENDED)
		ret = FUNC6(context, cq_attr, cq);
	else
		ret = FUNC5(context, cq_attr, cq);

	if (ret)
		goto err_db;


	if (cq_alloc_flags & MLX4_CQ_FLAGS_EXTENDED)
		FUNC7(cq, cq_attr);

	return &cq->ibv_cq;

err_db:
	FUNC9(FUNC11(context), MLX4_DB_TYPE_CQ, cq->set_ci_db);

err_buf:
	FUNC8(&cq->buf);

err:
	FUNC1(cq);

	return NULL;
}
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
struct mlx5_device {int /*<<< orphan*/  page_size; } ;
struct mlx5_cqe64 {int op_own; } ;
struct mlx5_cq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct mlx5_context {TYPE_1__ ibv_ctx; } ;
struct mlx5_buf {struct mlx5_cqe64* buf; } ;
typedef  enum mlx5_alloc_type { ____Placeholder_mlx5_alloc_type } mlx5_alloc_type ;

/* Variables and functions */
 int MLX5_ALLOC_TYPE_ANON ; 
 int MLX5_ALLOC_TYPE_HUGE ; 
 int MLX5_CQE_INVALID ; 
 int /*<<< orphan*/  MLX5_CQ_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_cqe64*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx5_context*,struct mlx5_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 struct mlx5_device* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct mlx5_context *mctx, struct mlx5_cq *cq,
		      struct mlx5_buf *buf, int nent, int cqe_sz)
{
	struct mlx5_cqe64 *cqe;
	int i;
	struct mlx5_device *dev = FUNC5(mctx->ibv_ctx.device);
	int ret;
	enum mlx5_alloc_type type;
	enum mlx5_alloc_type default_type = MLX5_ALLOC_TYPE_ANON;

	if (FUNC4("HUGE_CQ"))
		default_type = MLX5_ALLOC_TYPE_HUGE;

	FUNC3(MLX5_CQ_PREFIX, &type, default_type);

	ret = FUNC2(mctx, buf,
				      FUNC0(nent * cqe_sz, dev->page_size),
				      dev->page_size,
				      type,
				      MLX5_CQ_PREFIX);

	if (ret)
		return -1;

	FUNC1(buf->buf, 0, nent * cqe_sz);

	for (i = 0; i < nent; ++i) {
		cqe = buf->buf + i * cqe_sz;
		cqe += cqe_sz == 128 ? 1 : 0;
		cqe->op_own = MLX5_CQE_INVALID << 4;
	}

	return 0;
}
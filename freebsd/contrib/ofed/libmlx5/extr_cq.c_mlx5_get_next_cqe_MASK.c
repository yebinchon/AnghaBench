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
struct mlx5_cqe64 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;
struct mlx5_cq {int cqe_sz; int /*<<< orphan*/  cqn; TYPE_1__ ibv_cq; int /*<<< orphan*/  cons_index; } ;
struct mlx5_context {int /*<<< orphan*/ * dbg_fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int CQ_OK ; 
 int MLX5_DBG_CQ_CQE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_cqe64*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int mlx5_debug_mask ; 
 void* FUNC3 (struct mlx5_cq*) ; 
 struct mlx5_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline int FUNC6(struct mlx5_cq *cq,
				    struct mlx5_cqe64 **pcqe64,
				    void **pcqe)
{
	void *cqe;
	struct mlx5_cqe64 *cqe64;

	cqe = FUNC3(cq);
	if (!cqe)
		return CQ_EMPTY;

	cqe64 = (cq->cqe_sz == 64) ? cqe : cqe + 64;

	++cq->cons_index;

	FUNC0(cqe64, sizeof *cqe64);

	/*
	 * Make sure we read CQ entry contents after we've checked the
	 * ownership bit.
	 */
	FUNC5();

#ifdef MLX5_DEBUG
	{
		struct mlx5_context *mctx = to_mctx(cq->ibv_cq.context);

		if (mlx5_debug_mask & MLX5_DBG_CQ_CQE) {
			FILE *fp = mctx->dbg_fp;

			mlx5_dbg(fp, MLX5_DBG_CQ_CQE, "dump cqe for cqn 0x%x:\n", cq->cqn);
			dump_cqe(fp, cqe64);
		}
	}
#endif
	*pcqe64 = cqe64;
	*pcqe = cqe;

	return CQ_OK;
}
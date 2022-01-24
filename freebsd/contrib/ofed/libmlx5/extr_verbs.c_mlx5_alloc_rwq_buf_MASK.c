#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int wqe_cnt; int /*<<< orphan*/  wrid; } ;
struct mlx5_rwq {TYPE_1__ rq; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf; } ;
struct ibv_context {int /*<<< orphan*/  device; } ;
typedef  enum mlx5_alloc_type { ____Placeholder_mlx5_alloc_type } mlx5_alloc_type ;
struct TYPE_4__ {int /*<<< orphan*/  page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int MLX5_ALLOC_TYPE_PREFER_CONTIG ; 
 int /*<<< orphan*/  MLX5_RWQ_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibv_context*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ibv_context *context,
			      struct mlx5_rwq *rwq,
			      int size)
{
	int err;
	enum mlx5_alloc_type default_alloc_type = MLX5_ALLOC_TYPE_PREFER_CONTIG;

	rwq->rq.wrid = FUNC2(rwq->rq.wqe_cnt * sizeof(uint64_t));
	if (!rwq->rq.wrid) {
		errno = ENOMEM;
		return -1;
	}

	err = FUNC3(FUNC4(context), &rwq->buf,
				      FUNC0(rwq->buf_size, FUNC5
				      (context->device)->page_size),
				      FUNC5(context->device)->page_size,
				      default_alloc_type,
				      MLX5_RWQ_PREFIX);

	if (err) {
		FUNC1(rwq->rq.wrid);
		errno = ENOMEM;
		return -1;
	}

	return 0;
}
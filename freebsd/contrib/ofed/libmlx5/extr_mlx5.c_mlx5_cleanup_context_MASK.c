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
struct verbs_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct mlx5_context {TYPE_1__ core_clock; scalar_t__ hca_core_clock; scalar_t__* uar; int /*<<< orphan*/  bfs; } ;
struct ibv_context {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int page_size; } ;

/* Variables and functions */
 int MLX5_MAX_UARS ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 struct mlx5_context* FUNC3 (struct ibv_context*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct verbs_device *device,
				 struct ibv_context *ibctx)
{
	struct mlx5_context *context = FUNC3(ibctx);
	int page_size = FUNC4(ibctx->device)->page_size;
	int i;

	FUNC1(context->bfs);
	for (i = 0; i < MLX5_MAX_UARS; ++i) {
		if (context->uar[i])
			FUNC2(context->uar[i], page_size);
	}
	if (context->hca_core_clock)
		FUNC2(context->hca_core_clock - context->core_clock.offset,
		       page_size);
	FUNC0(context);
}
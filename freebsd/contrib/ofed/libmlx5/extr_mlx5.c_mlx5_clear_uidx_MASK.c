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
typedef  size_t uint32_t ;
struct mlx5_context {int /*<<< orphan*/  uidx_table_mutex; TYPE_1__* uidx_table; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** table; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 size_t MLX5_UIDX_TABLE_MASK ; 
 size_t MLX5_UIDX_TABLE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_context *ctx, uint32_t uidx)
{
	int tind = uidx >> MLX5_UIDX_TABLE_SHIFT;

	FUNC1(&ctx->uidx_table_mutex);

	if (!--ctx->uidx_table[tind].refcnt)
		FUNC0(ctx->uidx_table[tind].table);
	else
		ctx->uidx_table[tind].table[uidx & MLX5_UIDX_TABLE_MASK] = NULL;

	FUNC2(&ctx->uidx_table_mutex);
}
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
struct TYPE_2__ {int /*<<< orphan*/  wrid; } ;
struct mlx5_rwq {TYPE_1__ rq; int /*<<< orphan*/  buf; } ;
struct mlx5_context {int dummy; } ;
struct ibv_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_context*,int /*<<< orphan*/ *) ; 
 struct mlx5_context* FUNC2 (struct ibv_context*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_rwq *rwq, struct ibv_context *context)
{
	struct mlx5_context *ctx = FUNC2(context);

	FUNC1(ctx, &rwq->buf);
	FUNC0(rwq->rq.wrid);
}
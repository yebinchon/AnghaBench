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
struct mlx5_context {int dummy; } ;
struct mlx5_buf {int type; } ;

/* Variables and functions */
#define  MLX5_ALLOC_TYPE_ANON 130 
#define  MLX5_ALLOC_TYPE_CONTIG 129 
#define  MLX5_ALLOC_TYPE_HUGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_context*,struct mlx5_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_context*,struct mlx5_buf*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(struct mlx5_context *ctx, struct mlx5_buf *buf)
{
	int err = 0;

	switch (buf->type) {
	case MLX5_ALLOC_TYPE_ANON:
		FUNC2(buf);
		break;

	case MLX5_ALLOC_TYPE_HUGE:
		FUNC1(ctx, buf);
		break;

	case MLX5_ALLOC_TYPE_CONTIG:
		FUNC3(ctx, buf);
		break;
	default:
		FUNC0(stderr, "Bad allocation type\n");
	}

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_context {int /*<<< orphan*/  hugetlb_lock; int /*<<< orphan*/  hugetlb_list; } ;
struct mlx5_buf {int length; TYPE_1__* hmem; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int MLX5_Q_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5_context *ctx, struct mlx5_buf *buf)
{
	int nchunk;

	nchunk = buf->length / MLX5_Q_CHUNK_SIZE;
	FUNC4(&ctx->hugetlb_lock);
	FUNC2(&buf->hmem->bitmap, buf->base, nchunk);
	if (FUNC1(&buf->hmem->bitmap)) {
		FUNC0(&ctx->hugetlb_list, buf->hmem, entry);
		FUNC5(&ctx->hugetlb_lock);
		FUNC3(buf->hmem);
	} else
		FUNC5(&ctx->hugetlb_lock);
}
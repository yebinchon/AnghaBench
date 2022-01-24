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
struct mlx5_buf {int length; int /*<<< orphan*/  type; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_ALLOC_TYPE_ANON ; 
 int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 

int FUNC4(struct mlx5_buf *buf, size_t size, int page_size)
{
	int ret;
	int al_size;

	al_size = FUNC0(size, page_size);
	ret = FUNC3(&buf->buf, page_size, al_size);
	if (ret)
		return ret;

	ret = FUNC2(buf->buf, al_size);
	if (ret)
		FUNC1(buf->buf);

	if (!ret) {
		buf->length = al_size;
		buf->type = MLX5_ALLOC_TYPE_ANON;
	}

	return ret;
}
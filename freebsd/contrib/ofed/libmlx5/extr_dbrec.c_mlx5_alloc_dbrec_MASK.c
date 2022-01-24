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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * buf; } ;
struct mlx5_db_page {scalar_t__ use_cnt; scalar_t__ num_db; unsigned long* free; TYPE_1__ buf; struct mlx5_db_page* next; } ;
struct mlx5_context {int cache_line_size; int /*<<< orphan*/  db_list_mutex; struct mlx5_db_page* db_list; } ;

/* Variables and functions */
 struct mlx5_db_page* FUNC0 (struct mlx5_context*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

uint32_t *FUNC4(struct mlx5_context *context)
{
	struct mlx5_db_page *page;
	uint32_t *db = NULL;
	int i, j;

	FUNC2(&context->db_list_mutex);

	for (page = context->db_list; page; page = page->next)
		if (page->use_cnt < page->num_db)
			goto found;

	page = FUNC0(context);
	if (!page)
		goto out;

found:
	++page->use_cnt;

	for (i = 0; !page->free[i]; ++i)
		/* nothing */;

	j = FUNC1(page->free[i]);
	--j;
	page->free[i] &= ~(1UL << j);
	db = page->buf.buf + (i * 8 * sizeof(long) + j) * context->cache_line_size;

out:
	FUNC3(&context->db_list_mutex);

	return db;
}
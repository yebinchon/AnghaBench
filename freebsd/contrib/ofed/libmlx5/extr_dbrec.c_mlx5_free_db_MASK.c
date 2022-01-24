#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {void* buf; } ;
struct mlx5_db_page {unsigned long* free; TYPE_4__ buf; TYPE_2__* prev; struct mlx5_db_page* next; int /*<<< orphan*/  use_cnt; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct mlx5_context {int cache_line_size; int /*<<< orphan*/  db_list_mutex; struct mlx5_db_page* db_list; TYPE_1__ ibv_ctx; } ;
struct TYPE_7__ {uintptr_t page_size; } ;
struct TYPE_6__ {struct mlx5_db_page* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_db_page*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct mlx5_context *context, uint32_t *db)
{
	struct mlx5_db_page *page;
	uintptr_t ps = FUNC4(context->ibv_ctx.device)->page_size;
	int i;

	FUNC2(&context->db_list_mutex);

	for (page = context->db_list; page; page = page->next)
		if (((uintptr_t) db & ~(ps - 1)) == (uintptr_t) page->buf.buf)
			break;

	if (!page)
		goto out;

	i = ((void *) db - page->buf.buf) / context->cache_line_size;
	page->free[i / (8 * sizeof(long))] |= 1UL << (i % (8 * sizeof(long)));

	if (!--page->use_cnt) {
		if (page->prev)
			page->prev->next = page->next;
		else
			context->db_list = page->next;
		if (page->next)
			page->next->prev = page->prev;

		FUNC1(&page->buf);
		FUNC0(page);
	}

out:
	FUNC3(&context->db_list_mutex);
}
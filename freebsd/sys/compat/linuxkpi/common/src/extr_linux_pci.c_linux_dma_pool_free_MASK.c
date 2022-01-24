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
struct linux_dma_obj {int dummy; } ;
struct dma_pool {int /*<<< orphan*/  pool_zone; int /*<<< orphan*/  pool_ptree; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pool*) ; 
 struct linux_dma_obj* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct linux_dma_obj*,struct dma_pool*) ; 

void
FUNC5(struct dma_pool *pool, void *vaddr, dma_addr_t dma_addr)
{
	struct linux_dma_obj *obj;

	FUNC0(pool);
	obj = FUNC2(&pool->pool_ptree, dma_addr);
	if (obj == NULL) {
		FUNC1(pool);
		return;
	}
	FUNC3(&pool->pool_ptree, dma_addr);
	FUNC1(pool);

	FUNC4(pool->pool_zone, obj, pool);
}
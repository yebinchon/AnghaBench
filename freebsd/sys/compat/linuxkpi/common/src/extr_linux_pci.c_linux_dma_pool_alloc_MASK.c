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
struct linux_dma_obj {void* vaddr; int /*<<< orphan*/  dma_addr; } ;
struct dma_pool {int /*<<< orphan*/  pool_zone; int /*<<< orphan*/  pool_ptree; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pool*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct linux_dma_obj*) ; 
 struct linux_dma_obj* FUNC3 (int /*<<< orphan*/ ,struct dma_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct linux_dma_obj*,struct dma_pool*) ; 

void *
FUNC5(struct dma_pool *pool, gfp_t mem_flags,
    dma_addr_t *handle)
{
	struct linux_dma_obj *obj;

	obj = FUNC3(pool->pool_zone, pool, mem_flags);
	if (obj == NULL)
		return (NULL);

	FUNC0(pool);
	if (FUNC2(&pool->pool_ptree, obj) != 0) {
		FUNC1(pool);
		FUNC4(pool->pool_zone, obj, pool);
		return (NULL);
	}
	FUNC1(pool);

	*handle = obj->dma_addr;
	return (obj->vaddr);
}
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
struct linux_dma_obj {int /*<<< orphan*/  dmamap; } ;
struct dma_pool {int /*<<< orphan*/  pool_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *mem, int size, void *arg)
{
	struct linux_dma_obj *obj = mem;
	struct dma_pool *pool = arg;

	FUNC0(pool);
	FUNC2(pool->pool_dmat, obj->dmamap);
	FUNC1(pool);
}
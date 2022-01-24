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
struct linux_dma_obj {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dmamap; } ;
struct dma_pool {int /*<<< orphan*/  pool_entry_size; int /*<<< orphan*/  pool_dmat; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_pool*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5(void *mem, int size, void *arg, int flags)
{
	struct linux_dma_obj *obj = mem;
	struct dma_pool *pool = arg;
	int error, nseg;
	bus_dma_segment_t seg;

	nseg = -1;
	FUNC0(pool);
	error = FUNC3(pool->pool_dmat, obj->dmamap,
	    FUNC4(obj->vaddr), pool->pool_entry_size, BUS_DMA_NOWAIT,
	    &seg, &nseg);
	FUNC1(pool);
	if (error != 0) {
		return (error);
	}
	FUNC2(++nseg == 1, ("More than one segment (nseg=%d)", nseg));
	obj->dma_addr = seg.ds_addr;

	return (0);
}
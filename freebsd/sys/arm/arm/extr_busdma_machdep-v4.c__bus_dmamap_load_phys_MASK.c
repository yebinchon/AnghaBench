#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
struct sync_list {int dataoffs; int datacount; int /*<<< orphan*/  pages; scalar_t__ vaddr; } ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
typedef  int bus_addr_t ;
struct TYPE_17__ {int flags; scalar_t__ nsegments; scalar_t__ maxsegsz; } ;
struct TYPE_16__ {scalar_t__ pagesneeded; int sync_count; struct sync_list* slist; int /*<<< orphan*/ * segments; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int EFBIG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  maploads_bounced ; 
 int /*<<< orphan*/  maploads_physmem ; 
 int /*<<< orphan*/  maploads_total ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 

int
FUNC10(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags, bus_dma_segment_t *segs, int *segp)
{
	bus_addr_t curaddr;
	bus_addr_t sl_end = 0;
	bus_size_t sgsize;
	struct sync_list *sl;
	int error;

	if (segs == NULL)
		segs = map->segments;

	FUNC8(maploads_total, 1);
	FUNC8(maploads_physmem, 1);

	if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC4(dmat, map, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			FUNC8(maploads_bounced, 1);
			error = FUNC5(dmat, map, flags);
			if (error)
				return (error);
		}
	}

	sl = map->slist + map->sync_count - 1;

	while (buflen > 0) {
		curaddr = buf;
		sgsize = FUNC0(buflen, dmat->maxsegsz);
		if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
		    map->pagesneeded != 0 && FUNC9(dmat, curaddr)) {
			sgsize = FUNC0(sgsize, PAGE_SIZE - (curaddr & PAGE_MASK));
			curaddr = FUNC6(dmat, map, 0, curaddr,
			    sgsize);
		} else {
			if (map->sync_count > 0)
				sl_end = FUNC2(sl->pages) +
				    sl->dataoffs + sl->datacount;

			if (map->sync_count == 0 || curaddr != sl_end) {
				if (++map->sync_count > dmat->nsegments)
					break;
				sl++;
				sl->vaddr = 0;
				sl->datacount = sgsize;
				sl->pages = FUNC1(curaddr);
				sl->dataoffs = curaddr & PAGE_MASK;
			} else
				sl->datacount += sgsize;
		}
		sgsize = FUNC3(dmat, map, curaddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		buf += sgsize;
		buflen -= sgsize;
	}

	/*
	 * Did we fit?
	 */
	if (buflen != 0) {
		FUNC7(dmat, map);
		return (EFBIG); /* XXX better return value here? */
	}
	return (0);
}
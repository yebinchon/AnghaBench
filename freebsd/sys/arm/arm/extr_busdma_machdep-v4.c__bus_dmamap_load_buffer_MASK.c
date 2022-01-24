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
typedef  scalar_t__ vm_offset_t ;
struct sync_list {int dataoffs; int datacount; scalar_t__ vaddr; int /*<<< orphan*/  pages; } ;
struct pmap {int dummy; } ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
typedef  int bus_addr_t ;
struct TYPE_17__ {int flags; scalar_t__ maxsegsz; scalar_t__ nsegments; int /*<<< orphan*/  alignment; int /*<<< orphan*/  boundary; int /*<<< orphan*/  lowaddr; } ;
struct TYPE_16__ {int flags; scalar_t__ pagesneeded; int sync_count; struct sync_list* slist; int /*<<< orphan*/ * segments; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int BUS_DMA_LOAD_MBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DMAMAP_CACHE_ALIGNED ; 
 int DMAMAP_COHERENT ; 
 int DMAMAP_DMAMEM_ALLOC ; 
 int EFBIG ; 
 int /*<<< orphan*/  KTR_BUSDMA ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,struct pmap*,void*,scalar_t__,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct pmap* kernel_pmap ; 
 int /*<<< orphan*/  maploads_bounced ; 
 int /*<<< orphan*/  maploads_coherent ; 
 int /*<<< orphan*/  maploads_dmamem ; 
 int /*<<< orphan*/  maploads_mbuf ; 
 int /*<<< orphan*/  maploads_total ; 
 int FUNC10 (struct pmap*,scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int) ; 

int
FUNC13(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, struct pmap *pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
	bus_size_t sgsize;
	bus_addr_t curaddr;
	bus_addr_t sl_pend = 0;
	struct sync_list *sl;
	vm_offset_t kvaddr;
	vm_offset_t vaddr = (vm_offset_t)buf;
	vm_offset_t sl_vend = 0;
	int error = 0;

	FUNC9(maploads_total, 1);
	if (map->flags & DMAMAP_COHERENT)
		FUNC9(maploads_coherent, 1);
	if (map->flags & DMAMAP_DMAMEM_ALLOC)
		FUNC9(maploads_dmamem, 1);

	if (segs == NULL)
		segs = map->segments;
	if (flags & BUS_DMA_LOAD_MBUF) {
		FUNC9(maploads_mbuf, 1);
		map->flags |= DMAMAP_CACHE_ALIGNED;
	}

	if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC5(dmat, map, pmap, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			FUNC9(maploads_bounced, 1);
			error = FUNC6(dmat, map, flags);
			if (error)
				return (error);
		}
	}
	FUNC0(KTR_BUSDMA, "lowaddr= %d boundary= %d, "
	    "alignment= %d", dmat->lowaddr, dmat->boundary, dmat->alignment);

	sl = map->slist + map->sync_count - 1;

	while (buflen > 0) {
		/*
		 * Get the physical address for this segment.
		 */
		if (FUNC3(pmap == kernel_pmap)) {
			curaddr = FUNC11(vaddr);
			kvaddr = vaddr;
		} else {
			curaddr = FUNC10(pmap, vaddr);
			map->flags &= ~DMAMAP_COHERENT;
			kvaddr = 0;
		}

		/*
		 * Compute the segment size, and adjust counts.
		 */
		sgsize = PAGE_SIZE - (curaddr & PAGE_MASK);
		if (sgsize > dmat->maxsegsz)
			sgsize = dmat->maxsegsz;
		if (buflen < sgsize)
			sgsize = buflen;

		if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
		    map->pagesneeded != 0 && FUNC12(dmat, curaddr)) {
			curaddr = FUNC7(dmat, map, kvaddr, curaddr,
			    sgsize);
		} else {
			if (map->sync_count > 0) {
				sl_pend = FUNC2(sl->pages) +
				    sl->dataoffs + sl->datacount;
				sl_vend = sl->vaddr + sl->datacount;
			}

			if (map->sync_count == 0 ||
			    (kvaddr != 0 && kvaddr != sl_vend) ||
			    (kvaddr == 0 && curaddr != sl_pend)) {

				if (++map->sync_count > dmat->nsegments)
					goto cleanup;
				sl++;
				sl->vaddr = kvaddr;
				sl->datacount = sgsize;
				sl->pages = FUNC1(curaddr);
				sl->dataoffs = curaddr & PAGE_MASK;
			} else
				sl->datacount += sgsize;
		}
		sgsize = FUNC4(dmat, map, curaddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		vaddr += sgsize;
		buflen -= sgsize;
	}

cleanup:
	/*
	 * Did we fit?
	 */
	if (buflen != 0) {
		FUNC8(dmat, map);
		return (EFBIG); /* XXX better return value here? */
	}
	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bounce_zone {scalar_t__ map_count; int total_bpages; } ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  maxsize; struct bounce_zone* bounce_zone; } ;
struct TYPE_7__ {int /*<<< orphan*/  bpages; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int BUS_DMA_MIN_ALLOC_COMP ; 
 int ENOMEM ; 
 int FUNC0 (int,int) ; 
 int MAX_BPAGES ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(bus_dma_tag_t dmat, bus_dmamap_t map)
{
	int error;

	/*
	 * Bouncing might be required if the driver asks for an active
	 * exclusion region, a data alignment that is stricter than 1, and/or
	 * an active address boundary.
	 */
	if (dmat->flags & BUS_DMA_COULD_BOUNCE) {

		/* Must bounce */
		struct bounce_zone *bz;
		int maxpages;

		if (dmat->bounce_zone == NULL) {
			if ((error = FUNC4(dmat)) != 0) {
				return (error);
			}
		}
		bz = dmat->bounce_zone;

		/* Initialize the new map */
		FUNC2(&(map->bpages));

		/*
		 * Attempt to add pages to our pool on a per-instance
		 * basis up to a sane limit.
		 */
		maxpages = MAX_BPAGES;
		if ((dmat->flags & BUS_DMA_MIN_ALLOC_COMP) == 0
		 || (bz->map_count > 0 && bz->total_bpages < maxpages)) {
			int pages;

			pages = FUNC0(FUNC5(dmat->maxsize), 1);
			pages = FUNC1(maxpages - bz->total_bpages, pages);
			pages = FUNC0(pages, 1);
			if (FUNC3(dmat, pages) < pages)
				return (ENOMEM);

			if ((dmat->flags & BUS_DMA_MIN_ALLOC_COMP) == 0)
				dmat->flags |= BUS_DMA_MIN_ALLOC_COMP;
		}
		bz->map_count++;
	}
	return (0);
}
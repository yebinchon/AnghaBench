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
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {scalar_t__ allocated; scalar_t__ resident; scalar_t__ mapped; scalar_t__ n_thp; scalar_t__ auto_thp_switched; int /*<<< orphan*/ * avail; } ;
typedef  TYPE_1__ base_t ;

/* Variables and functions */
 int FUNC0 (uintptr_t) ; 
 int LG_HUGEPAGE ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ metadata_thp_always ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ opt_metadata_thp ; 
 size_t FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(base_t *base, extent_t *extent, size_t gap_size,
    void *addr, size_t size) {
	if (FUNC3(extent) > 0) {
		/*
		 * Compute the index for the largest size class that does not
		 * exceed extent's size.
		 */
		szind_t index_floor =
		    FUNC6(FUNC3(extent) + 1) - 1;
		FUNC4(&base->avail[index_floor], extent);
	}

	if (config_stats) {
		base->allocated += size;
		/*
		 * Add one PAGE to base_resident for every page boundary that is
		 * crossed by the new allocation. Adjust n_thp similarly when
		 * metadata_thp is enabled.
		 */
		base->resident += FUNC1((uintptr_t)addr + size) -
		    FUNC1((uintptr_t)addr - gap_size);
		FUNC2(base->allocated <= base->resident);
		FUNC2(base->resident <= base->mapped);
		if (FUNC5() && (opt_metadata_thp ==
		    metadata_thp_always || base->auto_thp_switched)) {
			base->n_thp += (FUNC0((uintptr_t)addr + size)
			    - FUNC0((uintptr_t)addr - gap_size)) >>
			    LG_HUGEPAGE;
			FUNC2(base->mapped >= base->n_thp << LG_HUGEPAGE);
		}
	}
}
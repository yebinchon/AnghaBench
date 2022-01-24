#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_10__ {int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_1__ bin_t ;
struct TYPE_11__ {scalar_t__ nregs; } ;
typedef  TYPE_2__ bin_info_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_2__* bin_infos ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC8(tsdn_t *tsdn, arena_t *arena, bin_t *bin,
    szind_t binind) {
	const bin_info_t *bin_info;
	extent_t *slab;

	bin_info = &bin_infos[binind];
	if (!FUNC4(arena) && bin->slabcur != NULL) {
		FUNC2(arena, bin, bin->slabcur);
		bin->slabcur = NULL;
	}
	slab = FUNC1(tsdn, arena, bin, binind);
	if (bin->slabcur != NULL) {
		/*
		 * Another thread updated slabcur while this one ran without the
		 * bin lock in arena_bin_nonfull_slab_get().
		 */
		if (FUNC7(bin->slabcur) > 0) {
			void *ret = FUNC5(bin->slabcur,
			    bin_info);
			if (slab != NULL) {
				/*
				 * arena_slab_alloc() may have allocated slab,
				 * or it may have been pulled from
				 * slabs_nonfull.  Therefore it is unsafe to
				 * make any assumptions about how slab has
				 * previously been used, and
				 * arena_bin_lower_slab() must be called, as if
				 * a region were just deallocated from the slab.
				 */
				if (FUNC7(slab) == bin_info->nregs) {
					FUNC3(tsdn, arena, slab,
					    bin);
				} else {
					FUNC0(tsdn, arena, slab,
					    bin);
				}
			}
			return ret;
		}

		FUNC2(arena, bin, bin->slabcur);
		bin->slabcur = NULL;
	}

	if (slab == NULL) {
		return NULL;
	}
	bin->slabcur = slab;

	FUNC6(FUNC7(bin->slabcur) > 0);

	return FUNC5(slab, bin_info);
}
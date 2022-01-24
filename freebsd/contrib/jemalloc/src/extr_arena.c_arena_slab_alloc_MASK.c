#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_11__ {int /*<<< orphan*/  bitmap_info; int /*<<< orphan*/  nregs; int /*<<< orphan*/  slab_size; int /*<<< orphan*/  reg_size; } ;
typedef  TYPE_1__ bin_info_t ;
struct TYPE_12__ {int /*<<< orphan*/  extents_muzzy; int /*<<< orphan*/  extents_dirty; } ;
typedef  TYPE_2__ arena_t ;
struct TYPE_13__ {int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_3__ arena_slab_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * EXTENT_HOOKS_INITIALIZER ; 
 int LG_PAGE ; 
 int /*<<< orphan*/  PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static extent_t *
FUNC12(tsdn_t *tsdn, arena_t *arena, szind_t binind,
    const bin_info_t *bin_info) {
	FUNC11(FUNC10(tsdn),
	    WITNESS_RANK_CORE, 0);

	extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;
	szind_t szind = FUNC9(bin_info->reg_size);
	bool zero = false;
	bool commit = true;
	extent_t *slab = FUNC8(tsdn, arena, &extent_hooks,
	    &arena->extents_dirty, NULL, bin_info->slab_size, 0, PAGE, true,
	    binind, &zero, &commit);
	if (slab == NULL) {
		slab = FUNC8(tsdn, arena, &extent_hooks,
		    &arena->extents_muzzy, NULL, bin_info->slab_size, 0, PAGE,
		    true, binind, &zero, &commit);
	}
	if (slab == NULL) {
		slab = FUNC1(tsdn, arena, &extent_hooks,
		    bin_info, szind);
		if (slab == NULL) {
			return NULL;
		}
	}
	FUNC2(FUNC7(slab));

	/* Initialize slab internals. */
	arena_slab_data_t *slab_data = FUNC6(slab);
	FUNC4(slab, bin_info->nregs);
	FUNC3(slab_data->bitmap, &bin_info->bitmap_info, false);

	FUNC0(arena, FUNC5(slab) >> LG_PAGE);

	return slab;
}
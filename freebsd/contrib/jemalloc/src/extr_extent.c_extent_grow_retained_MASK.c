#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  scalar_t__ pszind_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  scalar_t__ extent_split_interior_result_t ;
struct TYPE_22__ {void* (* alloc ) (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
struct TYPE_23__ {scalar_t__ extent_grow_next; scalar_t__ retain_grow_limit; int /*<<< orphan*/  extent_grow_mtx; int /*<<< orphan*/  extents_retained; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 scalar_t__ NPSIZES ; 
 int /*<<< orphan*/  NSIZES ; 
 size_t PAGE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ config_prof ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t,int*,int*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ extent_split_interior_error ; 
 scalar_t__ extent_split_interior_ok ; 
 int /*<<< orphan*/  extent_state_active ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC28 (void*,size_t) ; 
 void* FUNC29 (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ; 
 size_t FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static extent_t *
FUNC32(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, size_t size, size_t pad, size_t alignment,
    bool slab, szind_t szind, bool *zero, bool *commit) {
	FUNC25(tsdn, &arena->extent_grow_mtx);
	FUNC3(pad == 0 || !slab);
	FUNC3(!*zero || !slab);

	size_t esize = size + pad;
	size_t alloc_size_min = esize + FUNC0(alignment) - PAGE;
	/* Beware size_t wrap-around. */
	if (alloc_size_min < esize) {
		goto label_err;
	}
	/*
	 * Find the next extent size in the series that would be large enough to
	 * satisfy this request.
	 */
	pszind_t egn_skip = 0;
	size_t alloc_size = FUNC30(arena->extent_grow_next + egn_skip);
	while (alloc_size < alloc_size_min) {
		egn_skip++;
		if (arena->extent_grow_next + egn_skip == NPSIZES) {
			/* Outside legal range. */
			goto label_err;
		}
		FUNC3(arena->extent_grow_next + egn_skip < NPSIZES);
		alloc_size = FUNC30(arena->extent_grow_next + egn_skip);
	}

	extent_t *extent = FUNC5(tsdn, arena);
	if (extent == NULL) {
		goto label_err;
	}
	bool zeroed = false;
	bool committed = false;

	void *ptr;
	if (*r_extent_hooks == &extent_hooks_default) {
		ptr = FUNC6(tsdn, arena, NULL,
		    alloc_size, PAGE, &zeroed, &committed);
	} else {
		FUNC14(tsdn, arena);
		ptr = (*r_extent_hooks)->alloc(*r_extent_hooks, NULL,
		    alloc_size, PAGE, &zeroed, &committed,
		    FUNC2(arena));
		FUNC13(tsdn);
	}

	FUNC15(extent, arena, ptr, alloc_size, false, NSIZES,
	    FUNC1(arena), extent_state_active, zeroed,
	    committed, true);
	if (ptr == NULL) {
		FUNC10(tsdn, arena, extent);
		goto label_err;
	}

	if (FUNC18(tsdn, extent)) {
		FUNC24(tsdn, arena, r_extent_hooks,
		    &arena->extents_retained, extent, true);
		goto label_err;
	}

	if (FUNC22(extent) && FUNC9(extent)) {
		*zero = true;
	}
	if (FUNC9(extent)) {
		*commit = true;
	}

	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC31(tsdn, &rtree_ctx_fallback);

	extent_t *lead;
	extent_t *trail;
	extent_t *to_leak;
	extent_t *to_salvage;
	extent_split_interior_result_t result = FUNC21(
	    tsdn, arena, r_extent_hooks, rtree_ctx, &extent, &lead, &trail,
	    &to_leak, &to_salvage, NULL, size, pad, alignment, slab, szind,
	    true);

	if (result == extent_split_interior_ok) {
		if (lead != NULL) {
			FUNC17(tsdn, arena, r_extent_hooks,
			    &arena->extents_retained, lead, true);
		}
		if (trail != NULL) {
			FUNC17(tsdn, arena, r_extent_hooks,
			    &arena->extents_retained, trail, true);
		}
	} else {
		/*
		 * We should have allocated a sufficiently large extent; the
		 * cant_alloc case should not occur.
		 */
		FUNC3(result == extent_split_interior_error);
		if (to_salvage != NULL) {
			if (config_prof) {
				FUNC12(tsdn, to_salvage);
			}
			FUNC17(tsdn, arena, r_extent_hooks,
			    &arena->extents_retained, to_salvage, true);
		}
		if (to_leak != NULL) {
			FUNC11(tsdn, to_leak);
			FUNC24(tsdn, arena, r_extent_hooks,
			    &arena->extents_retained, to_leak, true);
		}
		goto label_err;
	}

	if (*commit && !FUNC9(extent)) {
		if (FUNC8(tsdn, arena, r_extent_hooks, extent, 0,
		    FUNC19(extent), true)) {
			FUNC17(tsdn, arena, r_extent_hooks,
			    &arena->extents_retained, extent, true);
			goto label_err;
		}
		FUNC23(extent, true);
	}

	/*
	 * Increment extent_grow_next if doing so wouldn't exceed the allowed
	 * range.
	 */
	if (arena->extent_grow_next + egn_skip + 1 <=
	    arena->retain_grow_limit) {
		arena->extent_grow_next += egn_skip + 1;
	} else {
		arena->extent_grow_next = arena->retain_grow_limit;
	}
	/* All opportunities for failure are past. */
	FUNC26(tsdn, &arena->extent_grow_mtx);

	if (config_prof) {
		/* Adjust gdump stats now that extent is final size. */
		FUNC12(tsdn, extent);
	}
	if (pad != 0) {
		FUNC4(tsdn, extent, alignment);
	}
	if (slab) {
		rtree_ctx_t rtree_ctx_fallback;
		rtree_ctx_t *rtree_ctx = FUNC31(tsdn,
		    &rtree_ctx_fallback);

		FUNC20(extent, true);
		FUNC16(tsdn, rtree_ctx, extent, szind);
	}
	if (*zero && !FUNC22(extent)) {
		void *addr = FUNC7(extent);
		size_t size = FUNC19(extent);
		if (FUNC28(addr, size)) {
			FUNC27(addr, 0, size);
		}
	}

	return extent;
label_err:
	FUNC26(tsdn, &arena->extent_grow_mtx);
	return NULL;
}
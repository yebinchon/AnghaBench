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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extents_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  scalar_t__ extent_split_interior_result_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ extent_split_interior_error ; 
 scalar_t__ extent_split_interior_ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static extent_t *
FUNC9(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, extents_t *extents,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    szind_t szind, extent_t *extent, bool growing_retained) {
	extent_t *lead;
	extent_t *trail;
	extent_t *to_leak;
	extent_t *to_salvage;

	extent_split_interior_result_t result = FUNC6(
	    tsdn, arena, r_extent_hooks, rtree_ctx, &extent, &lead, &trail,
	    &to_leak, &to_salvage, new_addr, size, pad, alignment, slab, szind,
	    growing_retained);

	if (result == extent_split_interior_ok) {
		if (lead != NULL) {
			FUNC2(tsdn, arena, extents, lead);
		}
		if (trail != NULL) {
			FUNC2(tsdn, arena, extents, trail);
		}
		return extent;
	} else {
		/*
		 * We should have picked an extent that was large enough to
		 * fulfill our allocation request.
		 */
		FUNC0(result == extent_split_interior_error);
		if (to_salvage != NULL) {
			FUNC3(tsdn, to_salvage);
		}
		if (to_leak != NULL) {
			void *leak = FUNC1(to_leak);
			FUNC4(tsdn, to_leak);
			FUNC7(tsdn, arena, r_extent_hooks, extents,
			    to_leak, growing_retained);
			FUNC0(FUNC5(tsdn, rtree_ctx, leak)
			    == NULL);
		}
		return NULL;
	}
	FUNC8();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_6__ {int (* merge ) (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  NSIZES ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC25(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *a, extent_t *b,
    bool growing_retained) {
	FUNC24(FUNC23(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);

	FUNC7(arena, r_extent_hooks);

	if ((*r_extent_hooks)->merge == NULL) {
		return true;
	}

	bool err;
	if (*r_extent_hooks == &extent_hooks_default) {
		/* Call directly to propagate tsdn. */
		err = FUNC9(FUNC2(a),
		    FUNC2(b));
	} else {
		FUNC6(tsdn, arena);
		err = (*r_extent_hooks)->merge(*r_extent_hooks,
		    FUNC2(a), FUNC12(a), FUNC2(b),
		    FUNC12(b), FUNC3(a),
		    FUNC0(arena));
		FUNC5(tsdn);
	}

	if (err) {
		return true;
	}

	/*
	 * The rtree writes must happen while all the relevant elements are
	 * owned, so the following code uses decomposed helper functions rather
	 * than extent_{,de}register() to do things in the right order.
	 */
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC22(tsdn, &rtree_ctx_fallback);
	rtree_leaf_elm_t *a_elm_a, *a_elm_b, *b_elm_a, *b_elm_b;
	FUNC10(tsdn, rtree_ctx, a, true, false, &a_elm_a,
	    &a_elm_b);
	FUNC10(tsdn, rtree_ctx, b, true, false, &b_elm_a,
	    &b_elm_b);

	FUNC8(tsdn, a, b);

	if (a_elm_b != NULL) {
		FUNC20(tsdn, &extents_rtree, a_elm_b, NULL,
		    NSIZES, false);
	}
	if (b_elm_b != NULL) {
		FUNC20(tsdn, &extents_rtree, b_elm_a, NULL,
		    NSIZES, false);
	} else {
		b_elm_b = b_elm_a;
	}

	FUNC13(a, FUNC12(a) + FUNC12(b));
	FUNC16(a, NSIZES);
	FUNC15(a, (FUNC14(a) < FUNC14(b)) ?
	    FUNC14(a) : FUNC14(b));
	FUNC19(a, FUNC18(a) && FUNC18(b));

	FUNC11(tsdn, a_elm_a, b_elm_b, a, NSIZES, false);

	FUNC17(tsdn, a, b);

	FUNC4(tsdn, FUNC1(b), b);

	return false;
}
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
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 scalar_t__ LARGE_MINCLASS ; 
 int /*<<< orphan*/  NBINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extents_rtree ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC6(tsdn_t *tsdn, extent_t *extent, const void *ptr) {
	FUNC1(config_prof);
	FUNC0(ptr != NULL);

	FUNC2(extent, NBINS);
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC5(tsdn, &rtree_ctx_fallback);
	FUNC4(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
	    NBINS, false);

	FUNC0(FUNC3(tsdn, ptr) == LARGE_MINCLASS);

	return LARGE_MINCLASS;
}
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
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  scalar_t__ lock_result_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  extents_rtree ; 
 scalar_t__ lock_result_failure ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int,int) ; 

__attribute__((used)) static extent_t *
FUNC2(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx, void *addr) {
	extent_t *ret = NULL;
	rtree_leaf_elm_t *elm = FUNC1(tsdn, &extents_rtree,
	    rtree_ctx, (uintptr_t)addr, false, false);
	if (elm == NULL) {
		return NULL;
	}
	lock_result_t lock_result;
	do {
		lock_result = FUNC0(tsdn, elm, &ret);
	} while (lock_result == lock_result_failure);
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_t ;
struct TYPE_4__ {int /*<<< orphan*/  child; } ;
typedef  TYPE_1__ rtree_node_elm_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static rtree_leaf_elm_t *
FUNC5(tsdn_t *tsdn, rtree_t *rtree, rtree_node_elm_t *elm,
    unsigned level, bool dependent) {
	rtree_leaf_elm_t *leaf;

	leaf = FUNC1(elm, dependent);
	if (!dependent && FUNC4(!FUNC3(leaf))) {
		leaf = FUNC2(tsdn, rtree, &elm->child);
	}
	FUNC0(!dependent || leaf != NULL);
	return leaf;
}
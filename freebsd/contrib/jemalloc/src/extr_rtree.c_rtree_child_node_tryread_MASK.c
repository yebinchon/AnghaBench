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
struct TYPE_4__ {int /*<<< orphan*/  child; } ;
typedef  TYPE_1__ rtree_node_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACQUIRE ; 
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtree_node_elm_t *
FUNC2(rtree_node_elm_t *elm, bool dependent) {
	rtree_node_elm_t *node;

	if (dependent) {
		node = (rtree_node_elm_t *)FUNC1(&elm->child,
		    ATOMIC_RELAXED);
	} else {
		node = (rtree_node_elm_t *)FUNC1(&elm->child,
		    ATOMIC_ACQUIRE);
	}

	FUNC0(!dependent || node != NULL);
	return node;
}
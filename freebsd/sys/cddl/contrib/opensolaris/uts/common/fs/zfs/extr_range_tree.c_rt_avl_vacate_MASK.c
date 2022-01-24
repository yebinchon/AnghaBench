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
typedef  int /*<<< orphan*/  range_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 

void
FUNC1(range_tree_t *rt, void *arg)
{
	/*
	 * Normally one would walk the tree freeing nodes along the way.
	 * Since the nodes are shared with the range trees we can avoid
	 * walking all nodes and just reinitialize the avl tree. The nodes
	 * will be freed by the range tree, so we don't want to free them here.
	 */
	FUNC0(rt, arg);
}
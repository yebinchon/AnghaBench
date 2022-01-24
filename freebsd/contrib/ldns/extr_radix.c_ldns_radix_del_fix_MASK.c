#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ ldns_radix_t ;
struct TYPE_9__ {int len; struct TYPE_9__* parent; scalar_t__ data; } ;
typedef  TYPE_2__ ldns_radix_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(ldns_radix_t* tree, ldns_radix_node_t* node)
{
	while (node) {
		if (node->data) {
			/** Thou should not delete nodes with data attached. */
			return;
		} else if (node->len == 1 && node->parent) {
			/** Node with one child is fold back into. */
			FUNC1(node);
			return;
		} else if (node->len == 0) {
			/** Leaf node. */
			ldns_radix_node_t* parent = node->parent;
			if (!parent) {
				/** The root is a leaf node. */
				FUNC2(node, NULL);
				tree->root = NULL;
				return;
			}
			/** Cleanup leaf node and continue with parent. */
			FUNC0(node);
			node = parent;
		} else {
			/**
			 * Node cannot be deleted, because it has edge nodes
			 * and no parent to fix up to.
			 */
			return;
		}
	}
	/** Not reached. */
	return;
}
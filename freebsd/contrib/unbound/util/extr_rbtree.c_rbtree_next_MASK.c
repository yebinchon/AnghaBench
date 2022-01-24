#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* parent; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef  TYPE_1__ rbnode_type ;

/* Variables and functions */
 TYPE_1__* RBTREE_NULL ; 

rbnode_type *
FUNC0 (rbnode_type *node)
{
	rbnode_type *parent;

	if (node->right != RBTREE_NULL) {
		/* One right, then keep on going left... */
		for (node = node->right; node->left != RBTREE_NULL; node = node->left);
	} else {
		parent = node->parent;
		while (parent != RBTREE_NULL && node == parent->right) {
			node = parent;
			parent = parent->parent;
		}
		node = parent;
	}
	return node;
}
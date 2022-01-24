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
struct TYPE_8__ {int (* avl_compar ) (void*,void*) ;int /*<<< orphan*/  avl_offset; } ;
typedef  TYPE_1__ avl_tree_t ;
struct TYPE_9__ {struct TYPE_9__** avl_child; } ;
typedef  TYPE_2__ avl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AVL_AFTER ; 
 int AVL_BEFORE ; 
 TYPE_2__* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 void* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,void*) ; 
 int FUNC6 (void*,void*) ; 
 int FUNC7 (void*,void*) ; 

void
FUNC8(
	avl_tree_t *tree,
	void *new_data,
	void *here,
	int direction)
{
	avl_node_t *node;
	int child = direction;	/* rely on AVL_BEFORE == 0, AVL_AFTER == 1 */
#ifdef DEBUG
	int diff;
#endif

	FUNC0(tree != NULL);
	FUNC0(new_data != NULL);
	FUNC0(here != NULL);
	FUNC0(direction == AVL_BEFORE || direction == AVL_AFTER);

	/*
	 * If corresponding child of node is not NULL, go to the neighboring
	 * node and reverse the insertion direction.
	 */
	node = FUNC1(here, tree->avl_offset);

#ifdef DEBUG
	diff = tree->avl_compar(new_data, here);
	ASSERT(-1 <= diff && diff <= 1);
	ASSERT(diff != 0);
	ASSERT(diff > 0 ? child == 1 : child == 0);
#endif

	if (node->avl_child[child] != NULL) {
		node = node->avl_child[child];
		child = 1 - child;
		while (node->avl_child[child] != NULL) {
#ifdef DEBUG
			diff = tree->avl_compar(new_data,
			    AVL_NODE2DATA(node, tree->avl_offset));
			ASSERT(-1 <= diff && diff <= 1);
			ASSERT(diff != 0);
			ASSERT(diff > 0 ? child == 1 : child == 0);
#endif
			node = node->avl_child[child];
		}
#ifdef DEBUG
		diff = tree->avl_compar(new_data,
		    AVL_NODE2DATA(node, tree->avl_offset));
		ASSERT(-1 <= diff && diff <= 1);
		ASSERT(diff != 0);
		ASSERT(diff > 0 ? child == 1 : child == 0);
#endif
	}
	FUNC0(node->avl_child[child] == NULL);

	FUNC4(tree, new_data, FUNC2(node, child));
}
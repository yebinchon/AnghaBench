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
struct TYPE_4__ {size_t avl_offset; int /*<<< orphan*/ * avl_root; } ;
typedef  TYPE_1__ avl_tree_t ;
typedef  int /*<<< orphan*/  avl_node_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC4 (TYPE_1__*,void*,int) ; 

void *
FUNC5(avl_tree_t *tree, avl_index_t where, int direction)
{
	int child = FUNC1(where);
	avl_node_t *node = FUNC2(where);
	void *data;
	size_t off = tree->avl_offset;

	if (node == NULL) {
		FUNC0(tree->avl_root == NULL);
		return (NULL);
	}
	data = FUNC3(node, off);
	if (child != direction)
		return (data);

	return (FUNC4(tree, data, direction));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {scalar_t__ dclass; int len; int /*<<< orphan*/ * name; scalar_t__ labs; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/ * RBTREE_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct name_tree_node*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(rbtree_type* tree, uint16_t* dclass)
{
	struct name_tree_node key;
	rbnode_type* n;
	struct name_tree_node* p;
	if(*dclass == 0) {
		/* first root item is first item in tree */
		n = FUNC2(tree);
		if(n == RBTREE_NULL)
			return 0;
		p = (struct name_tree_node*)n;
		if(FUNC0(p->name)) {
			*dclass = p->dclass;
			return 1;
		}
		/* root not first item? search for higher items */
		*dclass = p->dclass + 1;
		return FUNC4(tree, dclass);
	}
	/* find class n in tree, we may get a direct hit, or if we don't
	 * this is the last item of the previous class so rbtree_next() takes
	 * us to the next root (if any) */
	key.node.key = &key;
	key.name = (uint8_t*)"\000";
	key.len = 1;
	key.labs = 0;
	key.dclass = *dclass;
	n = NULL;
	if(FUNC1(tree, &key, &n)) {
		/* exact */
		return 1;
	} else {
		/* smaller element */
		if(!n || n == RBTREE_NULL)
			return 0; /* nothing found */
		n = FUNC3(n);
		if(n == RBTREE_NULL)
			return 0; /* no higher */
		p = (struct name_tree_node*)n;
		if(FUNC0(p->name)) {
			*dclass = p->dclass;
			return 1;
		}
		/* not a root node, return next higher item */
		*dclass = p->dclass+1;
		return FUNC4(tree, dclass);
	}
}
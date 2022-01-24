#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ rbtree_type ;
struct TYPE_21__ {scalar_t__ color; struct TYPE_21__* right; struct TYPE_21__* left; struct TYPE_21__* parent; } ;
typedef  TYPE_2__ rbnode_type ;

/* Variables and functions */
 void* BLACK ; 
 TYPE_2__* RBTREE_NULL ; 
 scalar_t__ RED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_2__**) ; 

rbnode_type* 
FUNC7(rbtree_type *rbtree, const void *key)
{
	rbnode_type *to_delete;
	rbnode_type *child;
	if((to_delete = FUNC4(rbtree, key)) == 0) return 0;
	rbtree->count--;

	/* make sure we have at most one non-leaf child */
	if(to_delete->left != RBTREE_NULL && to_delete->right != RBTREE_NULL)
	{
		/* swap with smallest from right subtree (or largest from left) */
		rbnode_type *smright = to_delete->right;
		while(smright->left != RBTREE_NULL)
			smright = smright->left;
		/* swap the smright and to_delete elements in the tree,
		 * but the rbnode_type is first part of user data struct
		 * so cannot just swap the keys and data pointers. Instead
		 * readjust the pointers left,right,parent */

		/* swap colors - colors are tied to the position in the tree */
		FUNC5(&to_delete->color, &smright->color);

		/* swap child pointers in parents of smright/to_delete */
		FUNC1(rbtree, to_delete->parent, to_delete, smright);
		if(to_delete->right != smright)
			FUNC1(rbtree, smright->parent, smright, to_delete);

		/* swap parent pointers in children of smright/to_delete */
		FUNC0(smright->left, smright, to_delete);
		FUNC0(smright->left, smright, to_delete);
		FUNC0(smright->right, smright, to_delete);
		FUNC0(smright->right, smright, to_delete);
		FUNC0(to_delete->left, to_delete, smright);
		if(to_delete->right != smright)
			FUNC0(to_delete->right, to_delete, smright);
		if(to_delete->right == smright)
		{
			/* set up so after swap they work */
			to_delete->right = to_delete;
			smright->parent = smright;
		}

		/* swap pointers in to_delete/smright nodes */
		FUNC6(&to_delete->parent, &smright->parent);
		FUNC6(&to_delete->left, &smright->left);
		FUNC6(&to_delete->right, &smright->right);

		/* now delete to_delete (which is at the location where the smright previously was) */
	}
	FUNC2(to_delete->left == RBTREE_NULL || to_delete->right == RBTREE_NULL);

	if(to_delete->left != RBTREE_NULL) child = to_delete->left;
	else child = to_delete->right;

	/* unlink to_delete from the tree, replace to_delete with child */
	FUNC1(rbtree, to_delete->parent, to_delete, child);
	FUNC0(child, to_delete, to_delete->parent);

	if(to_delete->color == RED)
	{
		/* if node is red then the child (black) can be swapped in */
	}
	else if(child->color == RED)
	{
		/* change child to BLACK, removing a RED node is no problem */
		if(child!=RBTREE_NULL) child->color = BLACK;
	}
	else FUNC3(rbtree, child, to_delete->parent);

	/* unlink completely */
	to_delete->parent = RBTREE_NULL;
	to_delete->left = RBTREE_NULL;
	to_delete->right = RBTREE_NULL;
	to_delete->color = BLACK;
	return to_delete;
}
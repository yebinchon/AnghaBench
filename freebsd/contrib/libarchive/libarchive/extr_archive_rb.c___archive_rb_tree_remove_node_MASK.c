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
struct archive_rb_tree {int dummy; } ;
struct archive_rb_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct archive_rb_node*) ; 
 scalar_t__ FUNC1 (struct archive_rb_node*) ; 
 unsigned int RB_DIR_LEFT ; 
 unsigned int RB_DIR_OTHER ; 
 unsigned int RB_DIR_RIGHT ; 
 scalar_t__ FUNC2 (struct archive_rb_node*) ; 
 unsigned int FUNC3 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_rb_tree*,struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_rb_node*) ; 
 struct archive_rb_node* FUNC6 (struct archive_rb_tree*,struct archive_rb_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_rb_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_rb_tree*,struct archive_rb_node*,int const) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_rb_tree*,struct archive_rb_node*,struct archive_rb_node*) ; 

void
FUNC10(struct archive_rb_tree *rbt,
    struct archive_rb_node *self)
{
	struct archive_rb_node *standin;
	unsigned int which;

	/*
	 * In the following diagrams, we (the node to be removed) are S.  Red
	 * nodes are lowercase.  T could be either red or black.
	 *
	 * Remember the major axiom of the red-black tree: the number of
	 * black nodes from the root to each leaf is constant across all
	 * leaves, only the number of red nodes varies.
	 *
	 * Thus removing a red leaf doesn't require any other changes to a
	 * red-black tree.  So if we must remove a node, attempt to rearrange
	 * the tree so we can remove a red node.
	 *
	 * The simplest case is a childless red node or a childless root node:
	 *
	 * |    T  -->    T  |    or    |  R  -->  *  |
	 * |  s    -->  *    |
	 */
	if (FUNC1(self)) {
		const int rebalance = FUNC0(self) && !FUNC4(rbt, self);
		FUNC8(rbt, self, rebalance);
		return;
	}
	if (!FUNC5(self)) {
		/*
		 * The next simplest case is the node we are deleting is
		 * black and has one red child.
		 *
		 * |      T  -->      T  -->      T  |
		 * |    S    -->  R      -->  R      |
		 * |  r      -->    s    -->    *    |
		 */
		which = FUNC2(self) ? RB_DIR_RIGHT : RB_DIR_LEFT;
		FUNC7(self, which);
		return;
	}

	/*
	 * We invert these because we prefer to remove from the inside of
	 * the tree.
	 */
	which = FUNC3(self) ^ RB_DIR_OTHER;

	/*
	 * Let's find the node closes to us opposite of our parent
	 * Now swap it with ourself, "prune" it, and rebalance, if needed.
	 */
	standin = FUNC6(rbt, self, which);
	FUNC9(rbt, self, standin);
}
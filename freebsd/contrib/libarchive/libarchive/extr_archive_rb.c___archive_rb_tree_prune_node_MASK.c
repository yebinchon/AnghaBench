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
struct archive_rb_node {int /*<<< orphan*/  rb_left; int /*<<< orphan*/ * rb_nodes; } ;

/* Variables and functions */
 struct archive_rb_node* FUNC0 (struct archive_rb_node*) ; 
 unsigned int FUNC1 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_rb_tree*,struct archive_rb_node*,unsigned int const) ; 

__attribute__((used)) static void
FUNC3(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, int rebalance)
{
	const unsigned int which = FUNC1(self);
	struct archive_rb_node *father = FUNC0(self);

	/*
	 * Since we are childless, we know that self->rb_left is pointing
	 * to the sentinel node.
	 */
	father->rb_nodes[which] = self->rb_left;

	/*
	 * Rebalance if requested.
	 */
	if (rebalance)
		FUNC2(rbt, father, which);
}
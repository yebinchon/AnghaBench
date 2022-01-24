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
struct archive_rb_tree {struct archive_rb_node* rbt_root; } ;
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;

/* Variables and functions */
 unsigned int const RB_DIR_OTHER ; 
 struct archive_rb_node* FUNC0 (struct archive_rb_node*) ; 
 scalar_t__ FUNC1 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_rb_tree*,struct archive_rb_node*) ; 
 scalar_t__ FUNC3 (struct archive_rb_node*) ; 

struct archive_rb_node *
FUNC4(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, const unsigned int direction)
{
	const unsigned int other = direction ^ RB_DIR_OTHER;

	if (self == NULL) {
		self = rbt->rbt_root;
		if (FUNC3(self))
			return NULL;
		while (!FUNC3(self->rb_nodes[direction]))
			self = self->rb_nodes[direction];
		return self;
	}
	/*
	 * We can't go any further in this direction.  We proceed up in the
	 * opposite direction until our parent is in direction we want to go.
	 */
	if (FUNC3(self->rb_nodes[direction])) {
		while (!FUNC2(rbt, self)) {
			if (other == (unsigned int)FUNC1(self))
				return FUNC0(self);
			self = FUNC0(self);
		}
		return NULL;
	}

	/*
	 * Advance down one in current direction and go down as far as possible
	 * in the opposite direction.
	 */
	self = self->rb_nodes[direction];
	while (!FUNC3(self->rb_nodes[other]))
		self = self->rb_nodes[other];
	return self;
}
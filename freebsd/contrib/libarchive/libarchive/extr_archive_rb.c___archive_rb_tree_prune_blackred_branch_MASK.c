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
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_rb_node*,struct archive_rb_node*) ; 
 struct archive_rb_node* FUNC1 (struct archive_rb_node*) ; 
 size_t FUNC2 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_rb_node*,struct archive_rb_node*) ; 

__attribute__((used)) static void
FUNC4(
    struct archive_rb_node *self, unsigned int which)
{
	struct archive_rb_node *father = FUNC1(self);
	struct archive_rb_node *son = self->rb_nodes[which];

	/*
	 * Remove ourselves from the tree and give our former child our
	 * properties (position, color, root).
	 */
	FUNC0(son, self);
	father->rb_nodes[FUNC2(son)] = son;
	FUNC3(son, father);
}
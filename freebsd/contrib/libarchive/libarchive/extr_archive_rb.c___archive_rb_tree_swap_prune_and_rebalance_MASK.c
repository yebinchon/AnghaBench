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
struct archive_rb_node {struct archive_rb_node** rb_nodes; } ;

/* Variables and functions */
 int F ; 
 int FUNC0 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_rb_node*,struct archive_rb_node*) ; 
 unsigned int const RB_DIR_OTHER ; 
 struct archive_rb_node* FUNC2 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_rb_node*) ; 
 size_t FUNC4 (struct archive_rb_node*) ; 
 scalar_t__ FUNC5 (struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_rb_node*,struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_rb_node*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_rb_tree*,struct archive_rb_node*,unsigned int const) ; 

__attribute__((used)) static void
FUNC9(struct archive_rb_tree *rbt,
    struct archive_rb_node *self, struct archive_rb_node *standin)
{
	const unsigned int standin_which = FUNC4(standin);
	unsigned int standin_other = standin_which ^ RB_DIR_OTHER;
	struct archive_rb_node *standin_son;
	struct archive_rb_node *standin_father = FUNC2(standin);
	int rebalance = FUNC0(standin);

	if (standin_father == self) {
		/*
		 * As a child of self, any children would be opposite of
		 * our parent.
		 */
		standin_son = standin->rb_nodes[standin_which];
	} else {
		/*
		 * Since we aren't a child of self, any children would be
		 * on the same side as our parent.
		 */
		standin_son = standin->rb_nodes[standin_other];
	}

	if (FUNC5(standin_son)) {
		/*
		 * We know we have a red child so if we flip it to black
		 * we don't have to rebalance.
		 */
		FUNC3(standin_son);
		rebalance = F;

		if (standin_father != self) {
			/*
			 * Change the son's parentage to point to his grandpa.
			 */
			FUNC6(standin_son, standin_father);
			FUNC7(standin_son, standin_which);
		}
	}

	if (standin_father == self) {
		/*
		 * If we are about to delete the standin's father, then when
		 * we call rebalance, we need to use ourselves as our father.
		 * Otherwise remember our original father.  Also, since we are
		 * our standin's father we only need to reparent the standin's
		 * brother.
		 *
		 * |    R      -->     S    |
		 * |  Q   S    -->   Q   T  |
		 * |        t  -->          |
		 *
		 * Have our son/standin adopt his brother as his new son.
		 */
		standin_father = standin;
	} else {
		/*
		 * |    R          -->    S       .  |
		 * |   / \  |   T  -->   / \  |  /   |
		 * |  ..... | S    -->  ..... | T    |
		 *
		 * Sever standin's connection to his father.
		 */
		standin_father->rb_nodes[standin_which] = standin_son;
		/*
		 * Adopt the far son.
		 */
		standin->rb_nodes[standin_other] = self->rb_nodes[standin_other];
		FUNC6(standin->rb_nodes[standin_other], standin);
		/*
		 * Use standin_other because we need to preserve standin_which
		 * for the removal_rebalance.
		 */
		standin_other = standin_which;
	}

	/*
	 * Move the only remaining son to our standin.  If our standin is our
	 * son, this will be the only son needed to be moved.
	 */
	standin->rb_nodes[standin_other] = self->rb_nodes[standin_other];
	FUNC6(standin->rb_nodes[standin_other], standin);

	/*
	 * Now copy the result of self to standin and then replace
	 * self with standin in the tree.
	 */
	FUNC1(standin, self);
	FUNC6(standin, FUNC2(self));
	FUNC2(standin)->rb_nodes[FUNC4(standin)] = standin;

	if (rebalance)
		FUNC8(rbt, standin_father, standin_which);
}
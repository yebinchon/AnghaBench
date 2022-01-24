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
struct eqn_node {int dummy; } ;
struct eqn_box {int args; int expectargs; struct eqn_box* parent; int /*<<< orphan*/ * next; struct eqn_box* first; struct eqn_box* last; int /*<<< orphan*/  type; struct eqn_box* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQN_SUBEXPR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct eqn_box* FUNC1 (struct eqn_node*,struct eqn_box*) ; 

__attribute__((used)) static struct eqn_box *
FUNC2(struct eqn_node *ep, struct eqn_box *parent)
{
	struct eqn_box	*b, *newb;

	FUNC0(NULL != parent->last);
	b = parent->last;
	if (parent->last == parent->first)
		parent->first = NULL;
	parent->args--;
	parent->last = b->prev;
	b->prev = NULL;
	newb = FUNC1(ep, parent);
	newb->type = EQN_SUBEXPR;
	newb->expectargs = 2;
	newb->args = 1;
	newb->first = newb->last = b;
	newb->first->next = NULL;
	b->parent = newb;
	return newb;
}
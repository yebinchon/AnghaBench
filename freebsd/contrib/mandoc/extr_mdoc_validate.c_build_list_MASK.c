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
struct roff_node {int flags; int /*<<< orphan*/  pos; int /*<<< orphan*/  line; struct roff_node* next; struct roff_node* parent; } ;
struct roff_man {struct roff_node* last; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int NODE_DELIMC ; 
 int NODE_NOSRC ; 
 int /*<<< orphan*/  ROFF_NEXT_SIBLING ; 
 int /*<<< orphan*/  FUNC0 (struct roff_man*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,struct roff_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_man*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct roff_man *mdoc, int tok)
{
	struct roff_node	*n;
	int			 ic;

	n = mdoc->last->next;
	for (ic = 1;; ic++) {
		FUNC0(mdoc, n->line, n->pos, tok);
		mdoc->last->flags |= NODE_NOSRC;
		FUNC1(mdoc, n);
		n = mdoc->last = mdoc->last->parent;
		mdoc->next = ROFF_NEXT_SIBLING;
		if (n->next == NULL)
			return ic;
		if (ic > 1 || n->next->next != NULL) {
			FUNC2(mdoc, n->line, n->pos, ",");
			mdoc->last->flags |= NODE_DELIMC | NODE_NOSRC;
		}
		n = mdoc->last->next;
		if (n->next == NULL) {
			FUNC2(mdoc, n->line, n->pos, "and");
			mdoc->last->flags |= NODE_NOSRC;
		}
	}
}
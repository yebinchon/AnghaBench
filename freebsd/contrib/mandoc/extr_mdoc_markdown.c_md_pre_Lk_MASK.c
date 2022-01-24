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
struct roff_node {int flags; struct roff_node* next; int /*<<< orphan*/  string; struct roff_node* prev; struct roff_node* last; struct roff_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_spc ; 
 int NODE_DELIMC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static int
FUNC3(struct roff_node *n)
{
	const struct roff_node *link, *descr, *punct;

	if ((link = n->child) == NULL)
		return 0;

	/* Find beginning of trailing punctuation. */
	punct = n->last;
	while (punct != link && punct->flags & NODE_DELIMC)
		punct = punct->prev;
	punct = punct->next;

	/* Link text. */
	descr = link->next;
	if (descr == punct)
		descr = link;  /* no text */
	FUNC0("[");
	outflags &= ~MD_spc;
	do {
		FUNC2(descr->string);
		descr = descr->next;
	} while (descr != punct);
	outflags &= ~MD_spc;

	/* Link target. */
	FUNC0("](");
	FUNC1(link->string);
	outflags &= ~MD_spc;
	FUNC0(")");

	/* Trailing punctuation. */
	while (punct != NULL) {
		FUNC2(punct->string);
		punct = punct->next;
	}
	return 0;
}
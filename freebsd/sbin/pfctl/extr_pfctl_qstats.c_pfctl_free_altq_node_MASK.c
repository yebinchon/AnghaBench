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
struct pf_altq_node {struct pf_altq_node* next; struct pf_altq_node* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_altq_node*) ; 

void
FUNC1(struct pf_altq_node *node)
{
	while (node != NULL) {
		struct pf_altq_node	*prev;

		if (node->children != NULL)
			FUNC1(node->children);
		prev = node;
		node = node->next;
		FUNC0(prev);
	}
}
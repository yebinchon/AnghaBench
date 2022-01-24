#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* srcdest_pairs; scalar_t__ num_pairs; struct TYPE_5__* next; struct TYPE_5__* linklist; } ;
typedef  TYPE_1__ cdg_node_t ;
typedef  TYPE_1__ cdg_link_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(cdg_node_t * node)
{
	cdg_link_t *link = node->linklist, *tmp = NULL;

	/* dealloc linklist */
	while (link) {
		tmp = link;
		link = link->next;

		if (tmp->num_pairs)
			FUNC0(tmp->srcdest_pairs);
		FUNC0(tmp);
	}
	/* dealloc node */
	FUNC0(node);
}
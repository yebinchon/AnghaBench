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
struct outbound_list {struct outbound_entry* first; } ;
struct outbound_entry {int /*<<< orphan*/  qsent; struct outbound_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct outbound_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct outbound_entry*) ; 

void 
FUNC2(struct outbound_list* list)
{
	struct outbound_entry *p, *np;
	p = list->first;
	while(p) {
		np = p->next;
		FUNC1(p->qsent, p);
		/* in region, no free needed */
		p = np;
	}
	FUNC0(list);
}
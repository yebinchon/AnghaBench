#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* iface; } ;
typedef  TYPE_1__ unit_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* IOPname; struct TYPE_6__* name; } ;
typedef  TYPE_2__ iface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(unit_t *u) {
	iface_t	*p, *cur;

	cur = u->iface;
	while (cur) {											/* loop over all the interface entries */
		if (cur->name)			FUNC0(cur->name);			/* throwing away the contents if they exist */
		if (cur->IOPname)		FUNC0(cur->IOPname);
		p = cur->next;
		FUNC0(cur);											/* then throw away the structure itself */
		cur = p;
	}
	u->iface = 0;											/* and finally remember that there are no remaining structure */
}
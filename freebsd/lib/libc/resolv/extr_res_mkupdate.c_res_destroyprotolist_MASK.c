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
struct valuelist {struct valuelist* name; struct valuelist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct valuelist*) ; 
 struct valuelist* protolist ; 

void
FUNC1(void) {
	struct valuelist *plp, *plp_next;

	for (plp = protolist; plp != NULL; plp = plp_next) {
		plp_next = plp->next;
		FUNC0(plp->name);
		FUNC0(plp);
	}
	protolist = (struct valuelist *)0;
}
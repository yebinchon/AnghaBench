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
struct valuelist {struct valuelist* prev; struct valuelist* next; int /*<<< orphan*/  port; int /*<<< orphan*/ * name; } ;
struct protoent {int /*<<< orphan*/  p_proto; int /*<<< orphan*/  p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct valuelist*) ; 
 struct protoent* FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 struct valuelist* protolist ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void) {
	struct protoent *pp;
	struct valuelist *slp;

#ifdef MAYBE_HESIOD
	setprotoent(0);
#else
	FUNC4(1);
#endif
	while ((pp = FUNC2()) != NULL) {
		slp = (struct valuelist *)FUNC3(sizeof(struct valuelist));
		if (!slp)
			break;
		slp->name = FUNC5(pp->p_name);
		if (slp->name == NULL) {
			FUNC1(slp);
			break;
		}
		slp->port = pp->p_proto;	/*%< host byte order */
		slp->next = protolist;
		slp->prev = NULL;
		if (protolist)
			protolist->prev = slp;
		protolist = slp;
	}
	FUNC0();
}
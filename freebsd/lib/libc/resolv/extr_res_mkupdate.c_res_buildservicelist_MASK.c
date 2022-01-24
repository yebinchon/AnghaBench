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
typedef  int /*<<< orphan*/  u_int16_t ;
struct valuelist {struct valuelist* prev; struct valuelist* next; int /*<<< orphan*/  port; struct valuelist* proto; struct valuelist* name; } ;
struct servent {scalar_t__ s_port; int /*<<< orphan*/  s_proto; int /*<<< orphan*/  s_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct valuelist*) ; 
 struct servent* FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct valuelist* servicelist ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void) {
	struct servent *sp;
	struct valuelist *slp;

#ifdef MAYBE_HESIOD
	setservent(0);
#else
	FUNC5(1);
#endif
	while ((sp = FUNC2()) != NULL) {
		slp = (struct valuelist *)FUNC3(sizeof(struct valuelist));
		if (!slp)
			break;
		slp->name = FUNC6(sp->s_name);
		slp->proto = FUNC6(sp->s_proto);
		if ((slp->name == NULL) || (slp->proto == NULL)) {
			if (slp->name) FUNC1(slp->name);
			if (slp->proto) FUNC1(slp->proto);
			FUNC1(slp);
			break;
		}
		slp->port = FUNC4((u_int16_t)sp->s_port);  /*%< host byt order */
		slp->next = servicelist;
		slp->prev = NULL;
		if (servicelist)
			servicelist->prev = slp;
		servicelist = slp;
	}
	FUNC0();
}
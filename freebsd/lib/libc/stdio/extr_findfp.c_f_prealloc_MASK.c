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
struct glue {struct glue* next; scalar_t__ niobs; } ;

/* Variables and functions */
 int FOPEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct glue*,struct glue*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct glue __sglue ; 
 int FUNC3 () ; 
 struct glue* lastglue ; 
 struct glue* FUNC4 (int) ; 

void
FUNC5(void)
{
	struct glue *g;
	int n;

	n = FUNC3() - FOPEN_MAX + 20;		/* 20 for slop. */
	/*
	 * It should be safe to walk the list without locking it;
	 * new nodes are only added to the end and none are ever
	 * removed.
	 */
	for (g = &__sglue; (n -= g->niobs) > 0 && g->next; g = g->next)
		/* void */;
	if ((n > 0) && ((g = FUNC4(n)) != NULL)) {
		FUNC1();
		FUNC0(lastglue->next, g);
		lastglue = g;
		FUNC2();
	}
}
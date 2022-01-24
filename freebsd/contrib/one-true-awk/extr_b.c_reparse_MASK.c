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
typedef  int /*<<< orphan*/  uschar ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTYRE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * lastre ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prestr ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char FUNC4 () ; 
 char rtok ; 

Node *FUNC5(const char *p)	/* parses regular expression pointed to by p */
{			/* uses relex() to scan regular expression */
	Node *np;

	FUNC1( ("reparse <%s>\n", p) );
	lastre = prestr = (uschar *) p;	/* prestr points to string to be parsed */
	rtok = FUNC4();
	/* GNU compatibility: an empty regexp matches anything */
	if (rtok == '\0') {
		/* FATAL("empty regular expression"); previous */
		return(FUNC2(EMPTYRE, NIL, NIL));
	}
	np = FUNC3();
	if (rtok != '\0')
		FUNC0("syntax error in regular expression %s at %s", lastre, prestr);
	return(np);
}
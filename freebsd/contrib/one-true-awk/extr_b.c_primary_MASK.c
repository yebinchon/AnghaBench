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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  ALL 133 
#define  CCL 132 
#define  CHAR 131 
#define  DOT 130 
#define  EMPTYRE 129 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAT ; 
#define  NCCL 128 
 int /*<<< orphan*/ * NIL ; 
 void* basestr ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 void* lastatom ; 
 int /*<<< orphan*/  lastre ; 
 int /*<<< orphan*/ * FUNC3 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prestr ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ rlxstr ; 
 int /*<<< orphan*/  rlxval ; 
 int rtok ; 
 void* starttok ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

Node *FUNC8(void)
{
	Node *np;
	int savelastatom;

	switch (rtok) {
	case CHAR:
		lastatom = starttok;
		np = FUNC3(CHAR, NIL, FUNC2(rlxval));
		rtok = FUNC5();
		return (FUNC7(np));
	case ALL:
		rtok = FUNC5();
		return (FUNC7(FUNC3(ALL, NIL, NIL)));
	case EMPTYRE:
		rtok = FUNC5();
		return (FUNC7(FUNC3(EMPTYRE, NIL, NIL)));
	case DOT:
		lastatom = starttok;
		rtok = FUNC5();
		return (FUNC7(FUNC3(DOT, NIL, NIL)));
	case CCL:
		np = FUNC3(CCL, NIL, (Node*) FUNC1((char *) rlxstr));
		lastatom = starttok;
		rtok = FUNC5();
		return (FUNC7(np));
	case NCCL:
		np = FUNC3(NCCL, NIL, (Node *) FUNC1((char *) rlxstr));
		lastatom = starttok;
		rtok = FUNC5();
		return (FUNC7(np));
	case '^':
		rtok = FUNC5();
		return (FUNC7(FUNC3(CHAR, NIL, FUNC2(HAT))));
	case '$':
		rtok = FUNC5();
		return (FUNC7(FUNC3(CHAR, NIL, NIL)));
	case '(':
		lastatom = starttok;
		savelastatom = starttok - basestr; /* Retain over recursion */
		rtok = FUNC5();
		if (rtok == ')') {	/* special pleading for () */
			rtok = FUNC5();
			return FUNC7(FUNC3(CCL, NIL, (Node *) FUNC6("")));
		}
		np = FUNC4();
		if (rtok == ')') {
			lastatom = basestr + savelastatom; /* Restore */
			rtok = FUNC5();
			return (FUNC7(np));
		}
		else
			FUNC0("syntax error in regular expression %s at %s", lastre, prestr);
	default:
		FUNC0("illegal primary in regular expression %s at %s", lastre, prestr);
	}
	return 0;	/*NOTREACHED*/
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct parse {scalar_t__ next; scalar_t__ end; scalar_t__ error; TYPE_1__* g; } ;
struct TYPE_15__ {int /*<<< orphan*/ * multis; } ;
typedef  TYPE_2__ cset ;
struct TYPE_14__ {int cflags; int csetsize; } ;
typedef  char RCHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  OANYOF ; 
 int /*<<< orphan*/  OBOW ; 
 int /*<<< orphan*/  OEOW ; 
 char FUNC9 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int REG_ICASE ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC10 (char,char) ; 
 TYPE_2__* FUNC11 (struct parse*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct parse*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct parse*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct parse*,TYPE_2__*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct parse*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct parse*,TYPE_2__*) ; 
 int FUNC19 (struct parse*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (struct parse*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct parse*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC23(struct parse *p)
{
	cset *cs;
	int invert = 0;
	static RCHAR_T bow[] = { '[', ':', '<', ':', ']', ']' };
	static RCHAR_T eow[] = { '[', ':', '>', ':', ']', ']' };

	cs = FUNC11(p);
	if (cs == NULL)
		return;

	/* Dept of Truly Sickening Special-Case Kludges */
	if (p->next + 5 < p->end && FUNC5(p->next, bow, 6) == 0) {
		FUNC4(OBOW, 0);
		FUNC8(6);
		return;
	}
	if (p->next + 5 < p->end && FUNC5(p->next, eow, 6) == 0) {
		FUNC4(OEOW, 0);
		FUNC8(6);
		return;
	}

	if (FUNC3('^'))
		invert++;	/* make note to invert set at end */
	if (FUNC3(']'))
		FUNC1(cs, ']');
	else if (FUNC3('-'))
		FUNC1(cs, '-');
	while (FUNC6() && FUNC9() != ']' && !FUNC10('-', ']'))
		FUNC22(p, cs);
	if (FUNC3('-'))
		FUNC1(cs, '-');
	(void)FUNC7(']', REG_EBRACK);

	if (p->error != 0)	/* don't mess things up further */
		return;

	if (p->g->cflags&REG_ICASE) {
		int i;
		int ci;

		for (i = p->g->csetsize - 1; i >= 0; i--)
			if (FUNC0(cs, i) && FUNC16(i)) {
				ci = FUNC21(i);
				if (ci != i)
					FUNC1(cs, ci);
			}
		if (cs->multis != NULL)
			FUNC17(p, cs);
	}
	if (invert) {
		int i;

		for (i = p->g->csetsize - 1; i >= 0; i--)
			if (FUNC0(cs, i))
				FUNC2(cs, i);
			else
				FUNC1(cs, i);
		if (p->g->cflags&REG_NEWLINE)
			FUNC2(cs, '\n');
		if (cs->multis != NULL)
			FUNC18(p, cs);
	}

	FUNC12(cs->multis == NULL);		/* xxx */

	if (FUNC19(p, cs) == 1) {		/* optimize singleton sets */
		FUNC20(p, FUNC13(p, cs));
		FUNC14(p, cs);
	} else
		FUNC4(OANYOF, FUNC15(p, cs));
}
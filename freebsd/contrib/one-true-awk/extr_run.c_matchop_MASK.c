#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fa ;
struct TYPE_9__ {int fval; int /*<<< orphan*/  tval; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Cell ;
typedef  int /*<<< orphan*/  Awkfloat ;

/* Variables and functions */
 TYPE_1__* False ; 
 int MATCH ; 
 int MATCHFCN ; 
 int NOTMATCH ; 
 int /*<<< orphan*/  NUM ; 
 TYPE_1__* True ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* patbeg ; 
 scalar_t__ patlen ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  rlengthloc ; 
 int /*<<< orphan*/  rstartloc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

Cell *FUNC10(Node **a, int n)	/* ~ and match() */
{
	Cell *x, *y;
	char *s, *t;
	int i;
	fa *pfa;
	int (*mf)(fa *, const char *) = match, mode = 0;

	if (n == MATCHFCN) {
		mf = pmatch;
		mode = 1;
	}
	x = FUNC0(a[1]);	/* a[1] = target text */
	s = FUNC1(x);
	if (a[0] == NULL)	/* a[1] == 0: already-compiled reg expr */
		i = (*mf)((fa *) a[2], s);
	else {
		y = FUNC0(a[2]);	/* a[2] = regular expr */
		t = FUNC1(y);
		pfa = FUNC3(t, mode);
		i = (*mf)(pfa, s);
		FUNC9(y);
	}
	FUNC9(x);
	if (n == MATCHFCN) {
		int start = patbeg - s + 1;
		if (patlen < 0)
			start = 0;
		FUNC6(rstartloc, (Awkfloat) start);
		FUNC6(rlengthloc, (Awkfloat) patlen);
		x = FUNC2();
		x->tval = NUM;
		x->fval = start;
		return x;
	} else if ((n == MATCH && i == 1) || (n == NOTMATCH && i == 0))
		return(True);
	else
		return(False);
}
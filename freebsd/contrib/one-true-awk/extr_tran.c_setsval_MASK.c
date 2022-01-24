#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int tval; char* sval; int fval; int /*<<< orphan*/  nval; int /*<<< orphan*/ * fmt; } ;
typedef  TYPE_1__ Cell ;
typedef  int /*<<< orphan*/  Awkfloat ;

/* Variables and functions */
 int CONVC ; 
 int CONVO ; 
 int* NF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM ; 
 int STR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ donefld ; 
 int donerec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__* ofsloc ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

char *FUNC14(Cell *vp, const char *s)	/* set string val of a Cell */
{
	char *t;
	int fldno;
	Awkfloat f;

	   FUNC2( ("starting setsval %p: %s = \"%s\", t=%o, r,f=%d,%d\n", 
		(void)vp, FUNC0(vp->nval), s, vp->tval, donerec, donefld) );
	if ((vp->tval & (NUM | STR)) == 0)
		FUNC4(vp, "assign to");
	if (FUNC6(vp)) {
		donerec = 0;	/* mark $0 invalid */
		fldno = FUNC1(vp->nval);
		if (fldno > *NF)
			FUNC8(fldno);
		   FUNC2( ("setting field %d to %s (%p)\n", fldno, s, (void *) s) );
	} else if (FUNC7(vp)) {
		donefld = 0;	/* mark $1... invalid */
		donerec = 1;
	} else if (vp == ofsloc) {
		if (donerec == 0)
			FUNC9();
	}
	t = s ? FUNC12(s) : FUNC12("");	/* in case it's self-assign */
	if (FUNC3(vp))
		FUNC13(vp->sval);
	vp->tval &= ~(NUM|CONVC|CONVO);
	vp->tval |= STR;
	vp->fmt = NULL;
	FUNC10(vp);
	   FUNC2( ("setsval %p: %s = \"%s (%p) \", t=%o r,f=%d,%d\n", 
		(void)vp, FUNC0(vp->nval), t, (void ) t, vp->tval, donerec, donefld) );
	vp->sval = t;
	if (&vp->fval == NF) {
		donerec = 0;	/* mark $0 invalid */
		f = FUNC5(vp);
		FUNC11(f);
		FUNC2( ("setting NF to %g\n", f) );
	}

	return(vp->sval);
}
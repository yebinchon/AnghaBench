#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tval; int /*<<< orphan*/  fval; int /*<<< orphan*/  nval; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Cell ;
typedef  int /*<<< orphan*/  Awkfloat ;

/* Variables and functions */
 int CON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM ; 
 int STR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ donefld ; 
 scalar_t__ donerec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

Awkfloat FUNC10(Cell *vp)	/* get float val of a Cell */
{
	if ((vp->tval & (NUM | STR)) == 0)
		FUNC4(vp, "read value of");
	if (FUNC6(vp) && donefld == 0)
		FUNC3();
	else if (FUNC8(vp) && donerec == 0)
		FUNC9();
	if (!FUNC7(vp)) {	/* not a number */
		vp->fval = FUNC1(vp->sval);	/* best guess */
		if (FUNC5(vp->sval) && !(vp->tval&CON))
			vp->tval |= NUM;	/* make NUM only sparingly */
	}
	   FUNC2( ("getfval %p: %s = %g, t=%o\n",
		(void)vp, FUNC0(vp->nval), vp->fval, vp->tval) );
	return(vp->fval);
}
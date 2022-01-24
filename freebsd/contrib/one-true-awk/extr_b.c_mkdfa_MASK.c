#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uschar ;
typedef  int /*<<< orphan*/  rrow ;
struct TYPE_7__ {int accept; int** posns; int anchor; int /*<<< orphan*/ * restr; int /*<<< orphan*/  initstat; TYPE_1__* re; } ;
typedef  TYPE_2__ fa ;
struct TYPE_6__ {int* lfollow; } ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  CAT ; 
 int /*<<< orphan*/  FINAL ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  STAR ; 
 int /*<<< orphan*/ * basestr ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * firstbasestr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int poscnt ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

fa *FUNC10(const char *s, int anchor)	/* does the real work of making a dfa */
				/* anchor = 1 for anchored matches, else 0 */
{
	Node *p, *p1;
	fa *f;

	firstbasestr = (uschar *) s;
	basestr = firstbasestr;
	p = FUNC7(s);
	p1 = FUNC4(CAT, FUNC4(STAR, FUNC4(ALL, NIL, NIL), NIL), p);
		/* put ALL STAR in front of reg.  exp. */
	p1 = FUNC4(CAT, p1, FUNC4(FINAL, NIL, NIL));
		/* put FINAL after reg.  exp. */

	poscnt = 0;
	FUNC6(p1);	/* enter parent pointers and leaf indices */
	if ((f = (fa *) FUNC0(1, sizeof(fa) + poscnt*sizeof(rrow))) == NULL)
		FUNC5("out of space for fa");
	f->accept = poscnt-1;	/* penter has computed number of positions in re */
	FUNC1(f, p1);	/* set up follow sets */
	FUNC2(p1);
	if ((f->posns[0] = (int *) FUNC0(*(f->re[0].lfollow), sizeof(int))) == NULL)
			FUNC5("out of space in makedfa");
	if ((f->posns[1] = (int *) FUNC0(1, sizeof(int))) == NULL)
		FUNC5("out of space in makedfa");
	*f->posns[1] = 0;
	f->initstat = FUNC3(f, anchor);
	f->anchor = anchor;
	f->restr = (uschar *) FUNC8(s);
	if (firstbasestr != basestr) {
		if (basestr)
			FUNC9(basestr);
	}
	return f;
}
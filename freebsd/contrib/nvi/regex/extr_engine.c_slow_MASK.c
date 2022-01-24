#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct match {char const* beginp; char const* endp; int eflags; TYPE_1__* g; int /*<<< orphan*/  tmp; int /*<<< orphan*/  empty; int /*<<< orphan*/  st; } ;
typedef  int /*<<< orphan*/  states ;
typedef  int /*<<< orphan*/  sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;
typedef  char RCHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BOL ; 
 int BOLEOL ; 
 int BOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EOL ; 
 int EOW ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 int NOTHING ; 
 char const OUT ; 
 int REG_NEWLINE ; 
 int REG_NOTBOL ; 
 int REG_NOTEOL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const RCHAR_T *			/* where it ended */
FUNC10(struct match *m, const RCHAR_T *start, const RCHAR_T *stop, sopno startst,
    sopno stopst)
{
	states st = m->st;
	states empty = m->empty;
	states tmp = m->tmp;
	const RCHAR_T *p = start;
	RCHAR_T c = (start == m->beginp) ? OUT : *(start-1);
	RCHAR_T lastc;	/* previous c */
	int flag;
	int i;
	const RCHAR_T *matchp;	/* last p at which a match ended */

	FUNC1("slow", start, stop, startst, stopst);
	FUNC2(st);
	FUNC6(st, startst);
	FUNC7("sstart", st, *p);
	st = FUNC9(m->g, startst, stopst, st, NOTHING, OUT, st);
	matchp = NULL;
	for (;;) {
		/* next character */
		lastc = c;
		c = (p == m->endp) ? OUT : *p;

		/* is there an EOL and/or BOL between lastc and c? */
		flag = 0;
		i = 0;
		if ( (lastc == '\n' && m->g->cflags&REG_NEWLINE) ||
				(lastc == OUT && !(m->eflags&REG_NOTBOL)) ) {
			flag = BOL;
			i = m->g->nbol;
		}
		if ( (c == '\n' && m->g->cflags&REG_NEWLINE) ||
				(c == OUT && !(m->eflags&REG_NOTEOL)) ) {
			flag = (flag == BOL) ? BOLEOL : EOL;
			i += m->g->neol;
		}
		if (i != 0) {
			for (; i > 0; i--)
				st = FUNC9(m->g, startst, stopst, st, flag, OUT, st);
			FUNC7("sboleol", st, c);
		}

		/* how about a word boundary? */
		if ( (flag == BOL || (lastc != OUT && !FUNC5(lastc))) &&
					(c != OUT && FUNC5(c)) ) {
			flag = BOW;
		}
		if ( (lastc != OUT && FUNC5(lastc)) &&
				(flag == EOL || (c != OUT && !FUNC5(c))) ) {
			flag = EOW;
		}
		if (flag == BOW || flag == EOW) {
			st = FUNC9(m->g, startst, stopst, st, flag, OUT, st);
			FUNC7("sboweow", st, c);
		}

		/* are we done? */
		if (FUNC4(st, stopst))
			matchp = p;
		if (FUNC3(st, empty) || p == stop)
			break;		/* NOTE BREAK OUT */

		/* no, we must deal with this character */
		FUNC0(tmp, st);
		FUNC0(st, empty);
		FUNC8(c != OUT);
		st = FUNC9(m->g, startst, stopst, tmp, 0, c, st);
		FUNC7("saft", st, c);
		FUNC8(FUNC3(FUNC9(m->g, startst, stopst, st, NOTHING, OUT, st), st));
		p++;
	}

	return(matchp);
}
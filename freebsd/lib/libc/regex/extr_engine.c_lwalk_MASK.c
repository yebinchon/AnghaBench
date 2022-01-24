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
typedef  char wint_t ;
typedef  char uch ;
struct match {char const* offp; char const* beginp; int eflags; char const* endp; char const* coldp; int /*<<< orphan*/  mbs; TYPE_1__* g; int /*<<< orphan*/  tmp; int /*<<< orphan*/  empty; int /*<<< orphan*/  fresh; int /*<<< orphan*/  st; } ;
typedef  int /*<<< orphan*/  states ;
typedef  int /*<<< orphan*/  sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BADCHAR ; 
 char BOL ; 
 char BOLEOL ; 
 char BOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char EOL ; 
 char EOW ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 char NOTHING ; 
 char OUT ; 
 int REG_NEWLINE ; 
 int REG_NOTBOL ; 
 int REG_NOTEOL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const) ; 
 int FUNC8 (char*,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char * /* where it ended, or NULL */
FUNC11(struct match *m, const char *start, const char *stop, sopno startst,
	sopno stopst, bool fast)
{
	states st = m->st;
	states fresh = m->fresh;
	states empty = m->empty;
	states tmp = m->tmp;
	const char *p = start;
	wint_t c;
	wint_t lastc;		/* previous c */
	wint_t flagch;
	int i;
	const char *matchp;	/* last p at which a match ended */
	size_t clen;

	FUNC1("slow", start, stop, startst, stopst);
	FUNC2(st);
	FUNC6(st, startst);
	FUNC7("sstart", st, *p);
	st = FUNC10(m->g, startst, stopst, st, NOTHING, st);
	if (fast)
		FUNC0(fresh, st);
	matchp = NULL;
	if (start == m->offp || (start == m->beginp && !(m->eflags&REG_NOTBOL)))
		c = OUT;
	else {
		/*
		 * XXX Wrong if the previous character was multi-byte.
		 * Newline never is (in encodings supported by FreeBSD),
		 * so this only breaks the ISWORD tests below.
		 */
		c = (uch)*(start - 1);
	}
	for (;;) {
		/* next character */
		lastc = c;
		if (p == m->endp) {
			c = OUT;
			clen = 0;
		} else
			clen = FUNC8(&c, p, m->endp - p, &m->mbs, BADCHAR);

		if (fast && FUNC3(st, fresh))
			matchp = p;

		/* is there an EOL and/or BOL between lastc and c? */
		flagch = '\0';
		i = 0;
		if ( (lastc == '\n' && m->g->cflags&REG_NEWLINE) ||
				(lastc == OUT && !(m->eflags&REG_NOTBOL)) ) {
			flagch = BOL;
			i = m->g->nbol;
		}
		if ( (c == '\n' && m->g->cflags&REG_NEWLINE) ||
				(c == OUT && !(m->eflags&REG_NOTEOL)) ) {
			flagch = (flagch == BOL) ? BOLEOL : EOL;
			i += m->g->neol;
		}
		if (i != 0) {
			for (; i > 0; i--)
				st = FUNC10(m->g, startst, stopst, st, flagch, st);
			FUNC7("sboleol", st, c);
		}

		/* how about a word boundary? */
		if ( (flagch == BOL || (lastc != OUT && !FUNC5(lastc))) &&
					(c != OUT && FUNC5(c)) ) {
			flagch = BOW;
		}
		if ( (lastc != OUT && FUNC5(lastc)) &&
				(flagch == EOL || (c != OUT && !FUNC5(c))) ) {
			flagch = EOW;
		}
		if (flagch == BOW || flagch == EOW) {
			st = FUNC10(m->g, startst, stopst, st, flagch, st);
			FUNC7("sboweow", st, c);
		}

		/* are we done? */
		if (FUNC4(st, stopst)) {
			if (fast)
				break;
			else
				matchp = p;
		}
		if (FUNC3(st, empty) || p == stop || clen > (size_t)(stop - p))
			break;		/* NOTE BREAK OUT */

		/* no, we must deal with this character */
		FUNC0(tmp, st);
		if (fast)
			FUNC0(st, fresh);
		else
			FUNC0(st, empty);
		FUNC9(c != OUT);
		st = FUNC10(m->g, startst, stopst, tmp, c, st);
		FUNC7("saft", st, c);
		FUNC9(FUNC3(FUNC10(m->g, startst, stopst, st, NOTHING, st), st));
		p += clen;
	}

	if (fast) {
		FUNC9(matchp != NULL);
		m->coldp = matchp;
		if (FUNC4(st, stopst))
			return (p + FUNC8(NULL, p, stop - p, &m->mbs, 0));
		else
			return (NULL);
	} else
		return (matchp);
}
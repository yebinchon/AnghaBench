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
typedef  int /*<<< orphan*/  wint_t ;
typedef  int /*<<< orphan*/  uch ;
struct parse {int /*<<< orphan*/  next; int /*<<< orphan*/  error; TYPE_1__* g; void** pend; void** pbegin; } ;
struct branchc {int dummy; } ;
typedef  size_t sopno ;
struct TYPE_2__ {size_t nsub; int cflags; int /*<<< orphan*/  neol; int /*<<< orphan*/  iflags; int /*<<< orphan*/  nbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 char FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  IGN ; 
 int INFINITY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t NPAREN ; 
 int /*<<< orphan*/  OANY ; 
 int /*<<< orphan*/  OBOL ; 
 int /*<<< orphan*/  OBOW ; 
 int /*<<< orphan*/  OCH_ ; 
 int /*<<< orphan*/  OEOL ; 
 int /*<<< orphan*/  OEOW ; 
 int /*<<< orphan*/  OLPAREN ; 
 int /*<<< orphan*/  OOR1 ; 
 int /*<<< orphan*/  OOR2 ; 
 int /*<<< orphan*/  OPLUS_ ; 
 int /*<<< orphan*/  OQUEST_ ; 
 int /*<<< orphan*/  ORPAREN ; 
 int /*<<< orphan*/  O_CH ; 
 int /*<<< orphan*/  O_PLUS ; 
 int /*<<< orphan*/  O_QUEST ; 
 char FUNC11 () ; 
 char FUNC12 () ; 
 int /*<<< orphan*/  REG_BADBR ; 
 int /*<<< orphan*/  REG_BADRPT ; 
 int /*<<< orphan*/  REG_EBRACE ; 
 int /*<<< orphan*/  REG_EESCAPE ; 
 int /*<<< orphan*/  REG_EMPTY ; 
 int /*<<< orphan*/  REG_EPAREN ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 size_t FUNC16 () ; 
 size_t FUNC17 () ; 
 int /*<<< orphan*/  USEBOL ; 
 int /*<<< orphan*/  USEEOL ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct parse*) ; 
 int /*<<< orphan*/  FUNC22 (struct parse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct parse*) ; 
 int FUNC24 (struct parse*) ; 
 int /*<<< orphan*/  FUNC25 (struct parse*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct parse*,size_t,int,int) ; 

__attribute__((used)) static bool
FUNC27(struct parse *p, struct branchc *bc)
{
	char c;
	wint_t wc;
	sopno pos;
	int count;
	int count2;
	sopno subno;
	int wascaret = 0;

	(void)bc;
	FUNC19(FUNC7());		/* caller should have ensured this */
	c = FUNC4();

	pos = FUNC5();
	switch (c) {
	case '(':
		(void)FUNC13(FUNC7(), REG_EPAREN);
		p->g->nsub++;
		subno = p->g->nsub;
		if (subno < NPAREN)
			p->pbegin[subno] = FUNC5();
		FUNC3(OLPAREN, subno);
		if (!FUNC14(')'))
			FUNC25(p, ')', IGN);
		if (subno < NPAREN) {
			p->pend[subno] = FUNC5();
			FUNC19(p->pend[subno] != 0);
		}
		FUNC3(ORPAREN, subno);
		(void)FUNC9(')', REG_EPAREN);
		break;
#ifndef POSIX_MISTAKE
	case ')':		/* happens only if no current unmatched ( */
		/*
		 * You may ask, why the ifndef?  Because I didn't notice
		 * this until slightly too late for 1003.2, and none of the
		 * other 1003.2 regular-expression reviewers noticed it at
		 * all.  So an unmatched ) is legal POSIX, at least until
		 * we can get it fixed.
		 */
		FUNC15(REG_EPAREN);
		break;
#endif
	case '^':
		FUNC3(OBOL, 0);
		p->g->iflags |= USEBOL;
		p->g->nbol++;
		wascaret = 1;
		break;
	case '$':
		FUNC3(OEOL, 0);
		p->g->iflags |= USEEOL;
		p->g->neol++;
		break;
	case '|':
		FUNC15(REG_EMPTY);
		break;
	case '*':
	case '+':
	case '?':
	case '{':
		FUNC15(REG_BADRPT);
		break;
	case '.':
		if (p->g->cflags&REG_NEWLINE)
			FUNC21(p);
		else
			FUNC3(OANY, 0);
		break;
	case '[':
		FUNC23(p);
		break;
	case '\\':
		(void)FUNC13(FUNC7(), REG_EESCAPE);
		wc = FUNC18();
		switch (wc) {
		case '<':
			FUNC3(OBOW, 0);
			break;
		case '>':
			FUNC3(OEOW, 0);
			break;
		default:
			FUNC22(p, wc);
			break;
		}
		break;
	default:
		if (p->error != 0)
			return (false);
		p->next--;
		wc = FUNC18();
		FUNC22(p, wc);
		break;
	}

	if (!FUNC7())
		return (false);
	c = FUNC11();
	/* we call { a repetition if followed by a digit */
	if (!( c == '*' || c == '+' || c == '?' || c == '{'))
		return (false);		/* no repetition, we're done */
	else if (c == '{')
		(void)FUNC13(FUNC8() && \
		    (FUNC20((uch)FUNC12()) || FUNC12() == ','), REG_BADRPT);
	FUNC10();

	(void)FUNC13(!wascaret, REG_BADRPT);
	switch (c) {
	case '*':	/* implemented as +? */
		/* this case does not require the (y|) trick, noKLUDGE */
		FUNC6(OPLUS_, pos);
		FUNC1(O_PLUS, pos);
		FUNC6(OQUEST_, pos);
		FUNC1(O_QUEST, pos);
		break;
	case '+':
		FUNC6(OPLUS_, pos);
		FUNC1(O_PLUS, pos);
		break;
	case '?':
		/* KLUDGE: emit y? as (y|) until subtle bug gets fixed */
		FUNC6(OCH_, pos);		/* offset slightly wrong */
		FUNC1(OOR1, pos);		/* this one's right */
		FUNC0(pos);			/* fix the OCH_ */
		FUNC3(OOR2, 0);			/* offset very wrong... */
		FUNC0(FUNC16());			/* ...so fix it */
		FUNC1(O_CH, FUNC17());
		break;
	case '{':
		count = FUNC24(p);
		if (FUNC2(',')) {
			if (FUNC20((uch)FUNC11())) {
				count2 = FUNC24(p);
				(void)FUNC13(count <= count2, REG_BADBR);
			} else		/* single number with comma */
				count2 = INFINITY;
		} else		/* just a single number */
			count2 = count;
		FUNC26(p, pos, count, count2);
		if (!FUNC2('}')) {	/* error heuristics */
			while (FUNC7() && FUNC11() != '}')
				FUNC10();
			(void)FUNC13(FUNC7(), REG_EBRACE);
			FUNC15(REG_BADBR);
		}
		break;
	}

	if (!FUNC7())
		return (false);
	c = FUNC11();
	if (!( c == '*' || c == '+' || c == '?' ||
				(c == '{' && FUNC8() && FUNC20((uch)FUNC12())) ) )
		return (false);
	FUNC15(REG_BADRPT);
	return (false);
}
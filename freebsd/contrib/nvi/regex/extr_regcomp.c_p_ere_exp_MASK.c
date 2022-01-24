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
struct parse {TYPE_1__* g; void** pend; void** pbegin; } ;
typedef  size_t sopno ;
typedef  int /*<<< orphan*/  UCHAR_T ;
struct TYPE_2__ {size_t nsub; int cflags; int /*<<< orphan*/  neol; int /*<<< orphan*/  iflags; int /*<<< orphan*/  nbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 char FUNC4 () ; 
 void* FUNC5 () ; 
 int INFINITY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 size_t NPAREN ; 
 int /*<<< orphan*/  OANY ; 
 int /*<<< orphan*/  OBOL ; 
 int /*<<< orphan*/  OCH_ ; 
 int /*<<< orphan*/  OEOL ; 
 int /*<<< orphan*/  OLPAREN ; 
 int /*<<< orphan*/  OOR1 ; 
 int /*<<< orphan*/  OOR2 ; 
 int /*<<< orphan*/  OPLUS_ ; 
 int /*<<< orphan*/  OQUEST_ ; 
 int /*<<< orphan*/  ORPAREN ; 
 int /*<<< orphan*/  O_CH ; 
 int /*<<< orphan*/  O_PLUS ; 
 int /*<<< orphan*/  O_QUEST ; 
 char FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  REG_BADBR ; 
 int /*<<< orphan*/  REG_BADRPT ; 
 int /*<<< orphan*/  REG_EBRACE ; 
 int /*<<< orphan*/  REG_EESCAPE ; 
 int /*<<< orphan*/  REG_EMPTY ; 
 int /*<<< orphan*/  REG_EPAREN ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 size_t FUNC17 () ; 
 size_t FUNC18 () ; 
 int /*<<< orphan*/  USEBOL ; 
 int /*<<< orphan*/  USEEOL ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct parse*) ; 
 int /*<<< orphan*/  FUNC21 (struct parse*,char) ; 
 int /*<<< orphan*/  FUNC22 (struct parse*) ; 
 int FUNC23 (struct parse*) ; 
 int /*<<< orphan*/  FUNC24 (struct parse*,char,size_t) ; 
 int /*<<< orphan*/  FUNC25 (struct parse*,size_t,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC26(struct parse *p, size_t reclimit)
{
	char c;
	sopno pos;
	int count;
	int count2;
	sopno subno;
	int wascaret = 0;

	FUNC19(FUNC8());		/* caller should have ensured this */
	c = FUNC4();

	pos = FUNC5();
	switch (c) {
	case '(':
		(void)FUNC14(FUNC8(), REG_EPAREN);
		p->g->nsub++;
		subno = p->g->nsub;
		if (subno < NPAREN)
			p->pbegin[subno] = FUNC5();
		FUNC3(OLPAREN, subno);
		if (!FUNC15(')'))
			FUNC24(p, ')', reclimit);
		if (subno < NPAREN) {
			p->pend[subno] = FUNC5();
			FUNC19(p->pend[subno] != 0);
		}
		FUNC3(ORPAREN, subno);
		(void)FUNC10(')', REG_EPAREN);
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
		FUNC16(REG_EPAREN);
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
		FUNC16(REG_EMPTY);
		break;
	case '*':
	case '+':
	case '?':
		FUNC16(REG_BADRPT);
		break;
	case '.':
		if (p->g->cflags&REG_NEWLINE)
			FUNC20(p);
		else
			FUNC3(OANY, 0);
		break;
	case '[':
		FUNC22(p);
		break;
	case '\\':
		(void)FUNC14(FUNC8(), REG_EESCAPE);
		c = FUNC4();
		FUNC21(p, c);
		break;
	case '{':		/* okay as ordinary except if digit follows */
		(void)FUNC14(!FUNC8() || !FUNC7((UCHAR_T)FUNC12()), REG_BADRPT);
		/* FALLTHROUGH */
	default:
		FUNC21(p, c);
		break;
	}

	if (!FUNC8())
		return;
	c = FUNC12();
	/* we call { a repetition if followed by a digit */
	if (!( c == '*' || c == '+' || c == '?' ||
				(c == '{' && FUNC9() && FUNC7((UCHAR_T)FUNC13())) ))
		return;		/* no repetition, we're done */
	FUNC11();

	(void)FUNC14(!wascaret, REG_BADRPT);
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
		FUNC0(FUNC17());			/* ...so fix it */
		FUNC1(O_CH, FUNC18());
		break;
	case '{':
		count = FUNC23(p);
		if (FUNC2(',')) {
			if (FUNC7((UCHAR_T)FUNC12())) {
				count2 = FUNC23(p);
				(void)FUNC14(count <= count2, REG_BADBR);
			} else		/* single number with comma */
				count2 = INFINITY;
		} else		/* just a single number */
			count2 = count;
		FUNC25(p, pos, count, count2, 0);
		if (!FUNC2('}')) {	/* error heuristics */
			while (FUNC8() && FUNC12() != '}')
				FUNC11();
			(void)FUNC14(FUNC8(), REG_EBRACE);
			FUNC16(REG_BADBR);
		}
		break;
	}

	if (!FUNC8())
		return;
	c = FUNC12();
	if (!( c == '*' || c == '+' || c == '?' ||
				(c == '{' && FUNC9() && FUNC7((UCHAR_T)FUNC13())) ) )
		return;
	FUNC16(REG_BADRPT);
}
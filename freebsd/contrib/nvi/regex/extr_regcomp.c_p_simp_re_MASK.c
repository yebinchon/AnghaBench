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
struct parse {size_t* pbegin; size_t* pend; TYPE_1__* g; int /*<<< orphan*/ * strip; } ;
typedef  size_t sopno ;
typedef  int /*<<< orphan*/  UCHAR_T ;
struct TYPE_2__ {size_t nsub; int backrefs; int cflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 void* FUNC5 () ; 
 int INFINITY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 size_t NPAREN ; 
 int /*<<< orphan*/  OANY ; 
 int /*<<< orphan*/  OBACK_ ; 
 int /*<<< orphan*/  OLPAREN ; 
 int /*<<< orphan*/  OPLUS_ ; 
 int /*<<< orphan*/  OQUEST_ ; 
 int /*<<< orphan*/  ORPAREN ; 
 int /*<<< orphan*/  O_BACK ; 
 int /*<<< orphan*/  O_PLUS ; 
 int /*<<< orphan*/  O_QUEST ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  REG_BADBR ; 
 int /*<<< orphan*/  REG_BADRPT ; 
 int /*<<< orphan*/  REG_EBRACE ; 
 int /*<<< orphan*/  REG_EESCAPE ; 
 int /*<<< orphan*/  REG_EPAREN ; 
 int /*<<< orphan*/  REG_ESUBREG ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct parse*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct parse*) ; 
 int /*<<< orphan*/  FUNC17 (struct parse*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct parse*) ; 
 int /*<<< orphan*/  FUNC19 (struct parse*,char,char,size_t) ; 
 int FUNC20 (struct parse*) ; 
 int /*<<< orphan*/  FUNC21 (struct parse*,size_t,int,int,size_t) ; 

__attribute__((used)) static int			/* was the simple RE an unbackslashed $? */
FUNC22(struct parse *p,
    int starordinary,		/* is a leading * an ordinary character? */
    size_t reclimit)
{
	int c;
	int count;
	int count2;
	sopno pos;
	int i;
	sopno subno;
	int backsl;

	pos = FUNC5();		/* repetion op, if any, covers from here */

	FUNC14(FUNC8());		/* caller should have ensured this */
	c = FUNC4();
	backsl = c == '\\';
	if (backsl) {
		(void)FUNC11(FUNC8(), REG_EESCAPE);
		c = (unsigned char)FUNC4();
		switch (c) {
		case '{':
			FUNC13(REG_BADRPT);
			break;
		case '(':
			p->g->nsub++;
			subno = p->g->nsub;
			if (subno < NPAREN)
				p->pbegin[subno] = FUNC5();
			FUNC3(OLPAREN, subno);
			/* the MORE here is an error heuristic */
			if (FUNC8() && !FUNC12('\\', ')'))
				FUNC19(p, '\\', ')', reclimit);
			if (subno < NPAREN) {
				p->pend[subno] = FUNC5();
				FUNC14(p->pend[subno] != 0);
			}
			FUNC3(ORPAREN, subno);
			(void)FUNC11(FUNC2('\\', ')'), REG_EPAREN);
			break;
		case ')':	/* should not get here -- must be user */
		case '}':
			FUNC13(REG_EPAREN);
			break;
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			i = c - '0';
			FUNC14(i < NPAREN);
			if (p->pend[i] != 0) {
				FUNC14(i <= p->g->nsub);
				FUNC3(OBACK_, i);
				FUNC14(p->pbegin[i] != 0);
				FUNC14(p->strip[p->pbegin[i]] == OLPAREN);
				FUNC14(p->strip[p->pend[i]] == ORPAREN);
				(void) FUNC15(p, p->pbegin[i]+1, p->pend[i]);
				FUNC3(O_BACK, i);
			} else
				FUNC13(REG_ESUBREG);
			p->g->backrefs = 1;
			break;
		default:
			FUNC17(p, c);
			break;
		}
	} else {
		switch (c) {
		case '.':
			if (p->g->cflags&REG_NEWLINE)
				FUNC16(p);
			else
				FUNC3(OANY, 0);
			break;
		case '[':
			FUNC18(p);
			break;
		case '*':
			(void)FUNC11(starordinary, REG_BADRPT);
			/* FALLTHROUGH */
		default:
			FUNC17(p, c);
			break;
		}
	}

	if (FUNC1('*')) {		/* implemented as +? */
		/* this case does not require the (y|) trick, noKLUDGE */
		FUNC6(OPLUS_, pos);
		FUNC0(O_PLUS, pos);
		FUNC6(OQUEST_, pos);
		FUNC0(O_QUEST, pos);
	} else if (FUNC2('\\', '{')) {
		count = FUNC20(p);
		if (FUNC1(',')) {
			if (FUNC8() && FUNC7((UCHAR_T)FUNC10())) {
				count2 = FUNC20(p);
				(void)FUNC11(count <= count2, REG_BADBR);
			} else		/* single number with comma */
				count2 = INFINITY;
		} else		/* just a single number */
			count2 = count;
		FUNC21(p, pos, count, count2, reclimit);
		if (!FUNC2('\\', '}')) {	/* error heuristics */
			while (FUNC8() && !FUNC12('\\', '}'))
				FUNC9();
			(void)FUNC11(FUNC8(), REG_EBRACE);
			FUNC13(REG_BADBR);
		}
	} else if (!backsl && c == (unsigned char)'$')	/* $ (but not \$) ends it */
		return(1);

	return(0);
}
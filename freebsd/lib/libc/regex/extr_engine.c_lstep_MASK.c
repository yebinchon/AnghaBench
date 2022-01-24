#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int wint_t ;
struct re_guts {int* strip; int /*<<< orphan*/ * sets; } ;
typedef  int /*<<< orphan*/  states ;
typedef  size_t sopno ;
typedef  int sop ;
typedef  int /*<<< orphan*/  onestate ;
typedef  int /*<<< orphan*/  cset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BOL ; 
 int BOLEOL ; 
 int BOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int EOL ; 
 int EOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
#define  OANY 147 
#define  OANYOF 146 
#define  OBACK_ 145 
#define  OBOL 144 
#define  OBOW 143 
#define  OCHAR 142 
#define  OCH_ 141 
#define  OEND 140 
#define  OEOL 139 
#define  OEOW 138 
#define  OLPAREN 137 
#define  OOR1 136 
#define  OOR2 135 
 int FUNC8 (int) ; 
#define  OPLUS_ 134 
 int FUNC9 (int) ; 
#define  OQUEST_ 133 
#define  ORPAREN 132 
#define  O_BACK 131 
#define  O_CH 130 
#define  O_PLUS 129 
#define  O_QUEST 128 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int nope ; 

__attribute__((used)) static states
FUNC11(struct re_guts *g,
	sopno start,		/* start state within strip */
	sopno stop,		/* state after stop state within strip */
	states bef,		/* states reachable before */
	wint_t ch,		/* character or NONCHAR code */
	states aft)		/* states already known reachable after */
{
	cset *cs;
	sop s;
	sopno pc;
	onestate here;		/* note, macros know this name */
	sopno look;
	int i;

	for (pc = start, FUNC4(here, pc); pc != stop; pc++, FUNC3(here)) {
		s = g->strip[pc];
		switch (FUNC8(s)) {
		case OEND:
			FUNC10(pc == stop-1);
			break;
		case OCHAR:
			/* only characters can match */
			FUNC10(!FUNC7(ch) || ch != FUNC9(s));
			if (ch == FUNC9(s))
				FUNC2(aft, bef, 1);
			break;
		case OBOL:
			if (ch == BOL || ch == BOLEOL)
				FUNC2(aft, bef, 1);
			break;
		case OEOL:
			if (ch == EOL || ch == BOLEOL)
				FUNC2(aft, bef, 1);
			break;
		case OBOW:
			if (ch == BOW)
				FUNC2(aft, bef, 1);
			break;
		case OEOW:
			if (ch == EOW)
				FUNC2(aft, bef, 1);
			break;
		case OANY:
			if (!FUNC7(ch))
				FUNC2(aft, bef, 1);
			break;
		case OANYOF:
			cs = &g->sets[FUNC9(s)];
			if (!FUNC7(ch) && FUNC1(cs, ch))
				FUNC2(aft, bef, 1);
			break;
		case OBACK_:		/* ignored here */
		case O_BACK:
			FUNC2(aft, aft, 1);
			break;
		case OPLUS_:		/* forward, this is just an empty */
			FUNC2(aft, aft, 1);
			break;
		case O_PLUS:		/* both forward and back */
			FUNC2(aft, aft, 1);
			i = FUNC5(aft, FUNC9(s));
			FUNC0(aft, aft, FUNC9(s));
			if (!i && FUNC5(aft, FUNC9(s))) {
				/* oho, must reconsider loop body */
				pc -= FUNC9(s) + 1;
				FUNC4(here, pc);
			}
			break;
		case OQUEST_:		/* two branches, both forward */
			FUNC2(aft, aft, 1);
			FUNC2(aft, aft, FUNC9(s));
			break;
		case O_QUEST:		/* just an empty */
			FUNC2(aft, aft, 1);
			break;
		case OLPAREN:		/* not significant here */
		case ORPAREN:
			FUNC2(aft, aft, 1);
			break;
		case OCH_:		/* mark the first two branches */
			FUNC2(aft, aft, 1);
			FUNC10(FUNC8(g->strip[pc+FUNC9(s)]) == (sop)OOR2);
			FUNC2(aft, aft, FUNC9(s));
			break;
		case OOR1:		/* done a branch, find the O_CH */
			if (FUNC6(aft, here)) {
				for (look = 1;
				    FUNC8(s = g->strip[pc+look]) != (sop)O_CH;
				    look += FUNC9(s))
					FUNC10(FUNC8(s) == (sop)OOR2);
				FUNC2(aft, aft, look + 1);
			}
			break;
		case OOR2:		/* propagate OCH_'s marking */
			FUNC2(aft, aft, 1);
			if (FUNC8(g->strip[pc+FUNC9(s)]) != (sop)O_CH) {
				FUNC10(FUNC8(g->strip[pc+FUNC9(s)]) == (sop)OOR2);
				FUNC2(aft, aft, FUNC9(s));
			}
			break;
		case O_CH:		/* just empty */
			FUNC2(aft, aft, 1);
			break;
		default:		/* ooooops... */
			FUNC10(nope);
			break;
		}
	}

	return(aft);
}
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
struct re_guts {int* strip; size_t* stripdata; int /*<<< orphan*/ * sets; } ;
typedef  int /*<<< orphan*/  states ;
typedef  size_t sopno ;
typedef  int sop ;
typedef  int /*<<< orphan*/  onestate ;
typedef  int /*<<< orphan*/  cset ;
typedef  size_t RCHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int BOL ; 
 int BOLEOL ; 
 int BOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int EOL ; 
 int EOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int FUNC7 (int) ; 
#define  OPLUS_ 134 
#define  OQUEST_ 133 
#define  ORPAREN 132 
#define  O_BACK 131 
#define  O_CH 130 
#define  O_PLUS 129 
#define  O_QUEST 128 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int nope ; 

__attribute__((used)) static states
FUNC9(struct re_guts *g,
    sopno start,			/* start state within strip */
    sopno stop,			/* state after stop state within strip */
    states bef,		/* states reachable before */
    int flag,			/* NONCHAR flag */
    RCHAR_T ch,			/* character code */
    states aft)		/* states already known reachable after */
{
	cset *cs;
	sop s;
	RCHAR_T d;
	sopno pc;
	onestate here;		/* note, macros know this name */
	sopno look;
	int i;

	for (pc = start, FUNC4(here, pc); pc != stop; pc++, FUNC3(here)) {
		s = g->strip[pc];
		d = g->stripdata[pc];
		switch (s) {
		case OEND:
			FUNC8(pc == stop-1);
			break;
		case OCHAR:
			/* only characters can match */
			FUNC8(!flag || ch != d);
			if (ch == d)
				FUNC2(aft, bef, 1);
			break;
		case OBOL:
			if (flag == BOL || flag == BOLEOL)
				FUNC2(aft, bef, 1);
			break;
		case OEOL:
			if (flag == EOL || flag == BOLEOL)
				FUNC2(aft, bef, 1);
			break;
		case OBOW:
			if (flag == BOW)
				FUNC2(aft, bef, 1);
			break;
		case OEOW:
			if (flag == EOW)
				FUNC2(aft, bef, 1);
			break;
		case OANY:
			if (!flag)
				FUNC2(aft, bef, 1);
			break;
		case OANYOF:
			cs = &g->sets[d];
			if (!flag && FUNC1(cs, ch))
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
			i = FUNC5(aft, d);
			FUNC0(aft, aft, d);
			if (!i && FUNC5(aft, d)) {
				/* oho, must reconsider loop body */
				pc -= d + 1;
				FUNC4(here, pc);
			}
			break;
		case OQUEST_:		/* two branches, both forward */
			FUNC2(aft, aft, 1);
			FUNC2(aft, aft, d);
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
			FUNC8(FUNC7(g->strip[pc+d]) == OOR2);
			FUNC2(aft, aft, d);
			break;
		case OOR1:		/* done a branch, find the O_CH */
			if (FUNC6(aft, here)) {
				for (look = 1; /**/; look += d) {
					s = g->strip[pc+look];
					d = g->stripdata[pc+look];
					if (s == O_CH)
						break;
					FUNC8(s == OOR2);
				}
				FUNC2(aft, aft, look);
			}
			break;
		case OOR2:		/* propagate OCH_'s marking */
			FUNC2(aft, aft, 1);
			if (g->strip[pc+d] != O_CH) {
				FUNC8(g->strip[pc+d] == OOR2);
				FUNC2(aft, aft, d);
			}
			break;
		case O_CH:		/* just empty */
			FUNC2(aft, aft, 1);
			break;
		default:		/* ooooops... */
			FUNC8(nope);
			break;
		}
	}

	return(aft);
}
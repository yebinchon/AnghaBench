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
struct re_guts {scalar_t__ mlen; char* must; int /*<<< orphan*/  iflags; int /*<<< orphan*/ * strip; } ;
struct parse {scalar_t__ error; } ;
typedef  scalar_t__ sopno ;
typedef  int /*<<< orphan*/  sop ;

/* Variables and functions */
#define  OCHAR 133 
#define  OCH_ 132 
 int const OEND ; 
#define  OLPAREN 131 
 int const OOR2 ; 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
#define  OPLUS_ 130 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  OQUEST_ 129 
#define  ORPAREN 128 
 int const O_CH ; 
 int const O_QUEST ; 
 int /*<<< orphan*/  REGEX_BAD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (size_t) ; 

__attribute__((used)) static void
FUNC4(struct parse *p, struct re_guts *g)
{
	sop *scan;
	sop *start = 0; /* start initialized in the default case, after that */
	sop *newstart = 0; /* newstart was initialized in the OCHAR case */
	sopno newlen;
	sop s;
	char *cp;
	sopno i;

	/* avoid making error situations worse */
	if (p->error != 0)
		return;

	/* find the longest OCHAR sequence in strip */
	newlen = 0;
	scan = g->strip + 1;
	do {
		s = *scan++;
		switch (FUNC0(s)) {
		case OCHAR:		/* sequence member */
			if (newlen == 0)		/* new sequence */
				newstart = scan - 1;
			newlen++;
			break;
		case OPLUS_:		/* things that don't break one */
		case OLPAREN:
		case ORPAREN:
			break;
		case OQUEST_:		/* things that must be skipped */
		case OCH_:
			scan--;
			do {
				scan += FUNC1(s);
				s = *scan;
				/* assert() interferes w debug printouts */
				if (FUNC0(s) != O_QUEST && FUNC0(s) != O_CH &&
							FUNC0(s) != OOR2) {
					g->iflags |= REGEX_BAD;
					return;
				}
			} while (FUNC0(s) != O_QUEST && FUNC0(s) != O_CH);
			/* fallthrough */
		default:		/* things that break a sequence */
			if (newlen > g->mlen) {		/* ends one */
				start = newstart;
				g->mlen = newlen;
			}
			newlen = 0;
			break;
		}
	} while (FUNC0(s) != OEND);

	if (g->mlen == 0)		/* there isn't one */
		return;

	/* turn it into a character string */
	g->must = FUNC3((size_t)g->mlen + 1);
	if (g->must == NULL) {		/* argh; just forget it */
		g->mlen = 0;
		return;
	}
	cp = g->must;
	scan = start;
	for (i = g->mlen; i > 0; i--) {
		while (FUNC0(s = *scan++) != OCHAR)
			continue;
		FUNC2(cp < g->must + g->mlen);
		*cp++ = (char)FUNC1(s);
	}
	FUNC2(cp == g->must + g->mlen);
	*cp++ = '\0';		/* just on general principles */
}
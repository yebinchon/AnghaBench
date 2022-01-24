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
struct termp {int maxtcol; int type; int fontsz; unsigned int defrmargin; TYPE_1__* ps; int /*<<< orphan*/  width; int /*<<< orphan*/  setwidth; int /*<<< orphan*/  letter; int /*<<< orphan*/  hspan; int /*<<< orphan*/  endline; int /*<<< orphan*/  end; int /*<<< orphan*/  begin; int /*<<< orphan*/  advance; int /*<<< orphan*/  fontl; int /*<<< orphan*/ * fontq; int /*<<< orphan*/  enc; void* tcols; void* tcol; } ;
struct manoutput {char* paper; } ;
typedef  enum termtype { ____Placeholder_termtype } termtype ;
struct TYPE_2__ {char* medianame; int scale; size_t width; size_t lastwidth; size_t height; unsigned int header; unsigned int top; size_t footer; size_t bottom; size_t left; size_t lineheight; } ;

/* Variables and functions */
 void* FUNC0 (struct termp*,double) ; 
 int /*<<< orphan*/  TERMENC_ASCII ; 
 int /*<<< orphan*/  TERMFONT_NONE ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ps_advance ; 
 int /*<<< orphan*/  ps_begin ; 
 int /*<<< orphan*/  ps_end ; 
 int /*<<< orphan*/  ps_endline ; 
 int /*<<< orphan*/  ps_hspan ; 
 int /*<<< orphan*/  ps_letter ; 
 int /*<<< orphan*/  ps_setwidth ; 
 int /*<<< orphan*/  ps_width ; 
 int FUNC3 (char const*,char*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static struct termp *
FUNC6(const struct manoutput *outopts, enum termtype type)
{
	struct termp	*p;
	unsigned int	 pagex, pagey;
	size_t		 marginx, marginy, lineheight;
	const char	*pp;

	p = FUNC1(1, sizeof(*p));
	p->tcol = p->tcols = FUNC1(1, sizeof(*p->tcol));
	p->maxtcol = 1;
	p->type = type;

	p->enc = TERMENC_ASCII;
	p->fontq = FUNC2(NULL,
	    (p->fontsz = 8), sizeof(*p->fontq));
	p->fontq[0] = p->fontl = TERMFONT_NONE;
	p->ps = FUNC1(1, sizeof(*p->ps));

	p->advance = ps_advance;
	p->begin = ps_begin;
	p->end = ps_end;
	p->endline = ps_endline;
	p->hspan = ps_hspan;
	p->letter = ps_letter;
	p->setwidth = ps_setwidth;
	p->width = ps_width;

	/* Default to US letter (millimetres). */

	p->ps->medianame = "Letter";
	pagex = 216;
	pagey = 279;

	/*
	 * The ISO-269 paper sizes can be calculated automatically, but
	 * it would require bringing in -lm for pow() and I'd rather not
	 * do that.  So just do it the easy way for now.  Since this
	 * only happens once, I'm not terribly concerned.
	 */

	pp = outopts->paper;
	if (pp != NULL && FUNC4(pp, "letter") != 0) {
		if (FUNC4(pp, "a3") == 0) {
			p->ps->medianame = "A3";
			pagex = 297;
			pagey = 420;
		} else if (FUNC4(pp, "a4") == 0) {
			p->ps->medianame = "A4";
			pagex = 210;
			pagey = 297;
		} else if (FUNC4(pp, "a5") == 0) {
			p->ps->medianame = "A5";
			pagex = 148;
			pagey = 210;
		} else if (FUNC4(pp, "legal") == 0) {
			p->ps->medianame = "Legal";
			pagex = 216;
			pagey = 356;
		} else if (FUNC3(pp, "%ux%u", &pagex, &pagey) == 2)
			p->ps->medianame = "CustomSize";
		else
			FUNC5("%s: Unknown paper", pp);
	}

	/*
	 * This MUST be defined before any PNT2AFM or AFM2PNT
	 * calculations occur.
	 */

	p->ps->scale = 11;

	/* Remember millimetres -> AFM units. */

	pagex = FUNC0(p, ((double)pagex * 72.0 / 25.4));
	pagey = FUNC0(p, ((double)pagey * 72.0 / 25.4));

	/* Margins are 1/9 the page x and y. */

	marginx = (size_t)((double)pagex / 9.0);
	marginy = (size_t)((double)pagey / 9.0);

	/* Line-height is 1.4em. */

	lineheight = FUNC0(p, ((double)p->ps->scale * 1.4));

	p->ps->width = p->ps->lastwidth = (size_t)pagex;
	p->ps->height = (size_t)pagey;
	p->ps->header = pagey - (marginy / 2) - (lineheight / 2);
	p->ps->top = pagey - marginy;
	p->ps->footer = (marginy / 2) - (lineheight / 2);
	p->ps->bottom = marginy;
	p->ps->left = marginx;
	p->ps->lineheight = lineheight;

	p->defrmargin = pagex - (marginx * 2);
	return p;
}
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
struct termp {int flags; int trailspace; size_t maxrmargin; TYPE_1__* tcol; int /*<<< orphan*/  mdocstyle; } ;
struct roff_meta {char* title; char* msec; char* date; char* os; scalar_t__ hasbody; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERMFONT_NONE ; 
 int TERMP_NOBREAK ; 
 int TERMP_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*) ; 
 int /*<<< orphan*/  FUNC5 (struct termp*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct termp*,int) ; 
 size_t FUNC7 (struct termp*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct termp*) ; 
 int /*<<< orphan*/  FUNC9 (struct termp*,char*) ; 

__attribute__((used)) static void
FUNC10(struct termp *p, const struct roff_meta *meta)
{
	char			*title;
	size_t			 datelen, titlen;

	FUNC0(meta->title);
	FUNC0(meta->msec);
	FUNC0(meta->date);

	FUNC5(p, TERMFONT_NONE);

	if (meta->hasbody)
		FUNC8(p);

	/*
	 * Temporary, undocumented option to imitate mdoc(7) output.
	 * In the bottom right corner, use the operating system
	 * instead of the title.
	 */

	if ( ! p->mdocstyle) {
		if (meta->hasbody) {
			FUNC8(p);
			FUNC8(p);
		}
		FUNC2(&title, "%s(%s)",
		    meta->title, meta->msec);
	} else if (meta->os != NULL) {
		title = FUNC3(meta->os);
	} else {
		title = FUNC3("");
	}
	datelen = FUNC7(p, meta->date);

	/* Bottom left corner: operating system. */

	p->flags |= TERMP_NOSPACE | TERMP_NOBREAK;
	p->trailspace = 1;
	p->tcol->offset = 0;
	p->tcol->rmargin = p->maxrmargin > datelen ?
	    (p->maxrmargin + FUNC6(p, 1) - datelen) / 2 : 0;

	if (meta->os)
		FUNC9(p, meta->os);
	FUNC4(p);

	/* At the bottom in the middle: manual date. */

	p->tcol->offset = p->tcol->rmargin;
	titlen = FUNC7(p, title);
	p->tcol->rmargin = p->maxrmargin > titlen ?
	    p->maxrmargin - titlen : 0;
	p->flags |= TERMP_NOSPACE;

	FUNC9(p, meta->date);
	FUNC4(p);

	/* Bottom right corner: manual title and section. */

	p->flags &= ~TERMP_NOBREAK;
	p->flags |= TERMP_NOSPACE;
	p->trailspace = 0;
	p->tcol->offset = p->tcol->rmargin;
	p->tcol->rmargin = p->maxrmargin;

	FUNC9(p, title);
	FUNC4(p);

	/*
	 * Reset the terminal state for more output after the footer:
	 * Some output modes, in particular PostScript and PDF, print
	 * the header and the footer into a buffer such that it can be
	 * reused for multiple output pages, then go on to format the
	 * main text.
	 */

        p->tcol->offset = 0;
        p->flags = 0;

	FUNC1(title);
}
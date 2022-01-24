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
struct termp {int flags; int trailspace; int maxrmargin; int /*<<< orphan*/  mdocstyle; TYPE_1__* tcol; } ;
struct roff_meta {char* vol; int /*<<< orphan*/  msec; int /*<<< orphan*/  title; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;

/* Variables and functions */
 int TERMP_NOBREAK ; 
 int TERMP_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct termp*) ; 
 size_t FUNC4 (struct termp*,int) ; 
 size_t FUNC5 (struct termp*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct termp*) ; 
 int /*<<< orphan*/  FUNC7 (struct termp*,char const*) ; 

__attribute__((used)) static void
FUNC8(struct termp *p, const struct roff_meta *meta)
{
	const char		*volume;
	char			*title;
	size_t			 vollen, titlen;

	FUNC0(meta->title);
	FUNC0(meta->msec);

	volume = NULL == meta->vol ? "" : meta->vol;
	vollen = FUNC5(p, volume);

	/* Top left corner: manual title and section. */

	FUNC2(&title, "%s(%s)", meta->title, meta->msec);
	titlen = FUNC5(p, title);

	p->flags |= TERMP_NOBREAK | TERMP_NOSPACE;
	p->trailspace = 1;
	p->tcol->offset = 0;
	p->tcol->rmargin = 2 * (titlen+1) + vollen < p->maxrmargin ?
	    (p->maxrmargin - vollen + FUNC4(p, 1)) / 2 :
	    vollen < p->maxrmargin ? p->maxrmargin - vollen : 0;

	FUNC7(p, title);
	FUNC3(p);

	/* At the top in the middle: manual volume. */

	p->flags |= TERMP_NOSPACE;
	p->tcol->offset = p->tcol->rmargin;
	p->tcol->rmargin = p->tcol->offset + vollen + titlen <
	    p->maxrmargin ?  p->maxrmargin - titlen : p->maxrmargin;

	FUNC7(p, volume);
	FUNC3(p);

	/* Top right corner: title and section, again. */

	p->flags &= ~TERMP_NOBREAK;
	p->trailspace = 0;
	if (p->tcol->rmargin + titlen <= p->maxrmargin) {
		p->flags |= TERMP_NOSPACE;
		p->tcol->offset = p->tcol->rmargin;
		p->tcol->rmargin = p->maxrmargin;
		FUNC7(p, title);
		FUNC3(p);
	}

	p->flags &= ~TERMP_NOSPACE;
	p->tcol->offset = 0;
	p->tcol->rmargin = p->maxrmargin;

	/*
	 * Groff prints three blank lines before the content.
	 * Do the same, except in the temporary, undocumented
	 * mode imitating mdoc(7) output.
	 */

	FUNC6(p);
	if ( ! p->mdocstyle) {
		FUNC6(p);
		FUNC6(p);
	}
	FUNC1(title);
}
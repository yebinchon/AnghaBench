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
struct termp {size_t maxrmargin; int trailspace; int flags; TYPE_1__* tcol; } ;
struct roff_meta {int /*<<< orphan*/  os; int /*<<< orphan*/  date; } ;
struct TYPE_2__ {size_t offset; size_t rmargin; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERMFONT_NONE ; 
 int TERMP_NOBREAK ; 
 int TERMP_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct termp*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct termp*,int) ; 
 size_t FUNC3 (struct termp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*) ; 
 int /*<<< orphan*/  FUNC5 (struct termp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct termp *p, const struct roff_meta *meta)
{
	size_t sz;

	FUNC1(p, TERMFONT_NONE);

	/*
	 * Output the footer in new-groff style, that is, three columns
	 * with the middle being the manual date and flanking columns
	 * being the operating system:
	 *
	 * SYSTEM                  DATE                    SYSTEM
	 */

	FUNC4(p);

	p->tcol->offset = 0;
	sz = FUNC3(p, meta->date);
	p->tcol->rmargin = p->maxrmargin > sz ?
	    (p->maxrmargin + FUNC2(p, 1) - sz) / 2 : 0;
	p->trailspace = 1;
	p->flags |= TERMP_NOSPACE | TERMP_NOBREAK;

	FUNC5(p, meta->os);
	FUNC0(p);

	p->tcol->offset = p->tcol->rmargin;
	sz = FUNC3(p, meta->os);
	p->tcol->rmargin = p->maxrmargin > sz ? p->maxrmargin - sz : 0;
	p->flags |= TERMP_NOSPACE;

	FUNC5(p, meta->date);
	FUNC0(p);

	p->tcol->offset = p->tcol->rmargin;
	p->tcol->rmargin = p->maxrmargin;
	p->trailspace = 0;
	p->flags &= ~TERMP_NOBREAK;
	p->flags |= TERMP_NOSPACE;

	FUNC5(p, meta->os);
	FUNC0(p);

	p->tcol->offset = 0;
	p->tcol->rmargin = p->maxrmargin;
	p->flags = 0;
}
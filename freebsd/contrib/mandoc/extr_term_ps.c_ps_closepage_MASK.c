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
struct termp {scalar_t__ type; TYPE_1__* ps; } ;
struct TYPE_2__ {size_t pdfbytes; size_t pdflastpg; int pages; int pdfbody; int flags; int /*<<< orphan*/  top; int /*<<< orphan*/  psrow; scalar_t__* psmarg; } ;

/* Variables and functions */
 int PS_NEWPAGE ; 
 scalar_t__ TERMFONT__MAX ; 
 scalar_t__ TERMTYPE_PS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,char*,...) ; 

__attribute__((used)) static void
FUNC3(struct termp *p)
{
	int		 i;
	size_t		 len, base;

	/*
	 * Close out a page that we've already flushed to output.  In
	 * PostScript, we simply note that the page must be shown.  In
	 * PDF, we must now create the Length, Resource, and Page node
	 * for the page contents.
	 */

	FUNC0(p->ps->psmarg && p->ps->psmarg[0]);
	FUNC2(p, "%s", p->ps->psmarg);

	if (TERMTYPE_PS != p->type) {
		len = p->ps->pdfbytes - p->ps->pdflastpg;
		base = p->ps->pages * 4 + p->ps->pdfbody;

		FUNC2(p, "endstream\nendobj\n");

		/* Length of content. */
		FUNC1(p, base + 1);
		FUNC2(p, "%zu\nendobj\n", len);

		/* Resource for content. */
		FUNC1(p, base + 2);
		FUNC2(p, "<<\n/ProcSet [/PDF /Text]\n");
		FUNC2(p, "/Font <<\n");
		for (i = 0; i < (int)TERMFONT__MAX; i++)
			FUNC2(p, "/F%d %d 0 R\n", i, 3 + i);
		FUNC2(p, ">>\n>>\nendobj\n");

		/* Page node. */
		FUNC1(p, base + 3);
		FUNC2(p, "<<\n");
		FUNC2(p, "/Type /Page\n");
		FUNC2(p, "/Parent 2 0 R\n");
		FUNC2(p, "/Resources %zu 0 R\n", base + 2);
		FUNC2(p, "/Contents %zu 0 R\n", base);
		FUNC2(p, ">>\nendobj\n");
	} else
		FUNC2(p, "showpage\n");

	p->ps->pages++;
	p->ps->psrow = p->ps->top;
	FUNC0( ! (PS_NEWPAGE & p->ps->flags));
	p->ps->flags |= PS_NEWPAGE;
}
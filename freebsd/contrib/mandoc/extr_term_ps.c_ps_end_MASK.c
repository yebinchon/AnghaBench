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
struct TYPE_2__ {int flags; char last; size_t pages; size_t pdfbody; size_t pdfbytes; int /*<<< orphan*/ * pdfobjs; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct termp*,int /*<<< orphan*/ ) ; 
 int PS_NEWPAGE ; 
 scalar_t__ TERMTYPE_PS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct termp*) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*) ; 
 int /*<<< orphan*/  FUNC5 (struct termp*) ; 
 int /*<<< orphan*/  FUNC6 (struct termp*,char*,...) ; 

__attribute__((used)) static void
FUNC7(struct termp *p)
{
	size_t		 i, xref, base;

	FUNC5(p);
	FUNC4(p);

	/*
	 * At the end of the file, do one last showpage.  This is the
	 * same behaviour as groff(1) and works for multiple pages as
	 * well as just one.
	 */

	if ( ! (PS_NEWPAGE & p->ps->flags)) {
		FUNC1(0 == p->ps->flags);
		FUNC1('\0' == p->ps->last);
		FUNC3(p);
	}

	if (TERMTYPE_PS == p->type) {
		FUNC6(p, "%%%%Trailer\n");
		FUNC6(p, "%%%%Pages: %zu\n", p->ps->pages);
		FUNC6(p, "%%%%EOF\n");
		return;
	}

	FUNC2(p, 2);
	FUNC6(p, "<<\n/Type /Pages\n");
	FUNC6(p, "/MediaBox [0 0 %zu %zu]\n",
			(size_t)FUNC0(p, p->ps->width),
			(size_t)FUNC0(p, p->ps->height));

	FUNC6(p, "/Count %zu\n", p->ps->pages);
	FUNC6(p, "/Kids [");

	for (i = 0; i < p->ps->pages; i++)
		FUNC6(p, " %zu 0 R", i * 4 + p->ps->pdfbody + 3);

	base = (p->ps->pages - 1) * 4 + p->ps->pdfbody + 4;

	FUNC6(p, "]\n>>\nendobj\n");
	FUNC2(p, base);
	FUNC6(p, "<<\n");
	FUNC6(p, "/Type /Catalog\n");
	FUNC6(p, "/Pages 2 0 R\n");
	FUNC6(p, ">>\nendobj\n");
	xref = p->ps->pdfbytes;
	FUNC6(p, "xref\n");
	FUNC6(p, "0 %zu\n", base + 1);
	FUNC6(p, "0000000000 65535 f \n");

	for (i = 0; i < base; i++)
		FUNC6(p, "%.10zu 00000 n \n",
		    p->ps->pdfobjs[(int)i]);

	FUNC6(p, "trailer\n");
	FUNC6(p, "<<\n");
	FUNC6(p, "/Size %zu\n", base + 1);
	FUNC6(p, "/Root %zu 0 R\n", base);
	FUNC6(p, "/Info 1 0 R\n");
	FUNC6(p, ">>\n");
	FUNC6(p, "startxref\n");
	FUNC6(p, "%zu\n", xref);
	FUNC6(p, "%%%%EOF\n");
}
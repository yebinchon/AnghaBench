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
struct tag {int dummy; } ;
struct html {int /*<<< orphan*/ * style; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAG_LINK ; 
 int /*<<< orphan*/  TAG_META ; 
 int /*<<< orphan*/  TAG_STYLE ; 
 int /*<<< orphan*/  FUNC0 (struct html*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct html*) ; 
 struct tag* FUNC2 (struct html*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC4 (struct html*,char*) ; 

void
FUNC5(struct html *h)
{
	struct tag	*t;

	FUNC2(h, TAG_META, "?", "charset", "utf-8");
	if (h->style != NULL) {
		FUNC2(h, TAG_LINK, "?h??", "rel", "stylesheet",
		    h->style, "type", "text/css", "media", "all");
		return;
	}

	/*
	 * Print a minimal embedded style sheet.
	 */

	t = FUNC2(h, TAG_STYLE, "");
	FUNC4(h, "table.head, table.foot { width: 100%; }");
	FUNC1(h);
	FUNC4(h, "td.head-rtitle, td.foot-os { text-align: right; }");
	FUNC1(h);
	FUNC4(h, "td.head-vol { text-align: center; }");
	FUNC1(h);
	FUNC4(h, "div.Pp { margin: 1ex 0ex; }");
	FUNC1(h);
	FUNC4(h, "div.Nd, div.Bf, div.Op { display: inline; }");
	FUNC1(h);
	FUNC4(h, "span.Pa, span.Ad { font-style: italic; }");
	FUNC1(h);
	FUNC4(h, "span.Ms { font-weight: bold; }");
	FUNC1(h);
	FUNC4(h, "dl.Bl-diag ");
	FUNC0(h, '>');
	FUNC4(h, " dt { font-weight: bold; }");
	FUNC1(h);
	FUNC4(h, "code.Nm, code.Fl, code.Cm, code.Ic, "
	    "code.In, code.Fd, code.Fn,");
	FUNC1(h);
	FUNC4(h, "code.Cd { font-weight: bold; "
	    "font-family: inherit; }");
	FUNC3(h, t);
}
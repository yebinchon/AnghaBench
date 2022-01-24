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
struct TYPE_2__ {char* manpath; int /*<<< orphan*/ * arch; int /*<<< orphan*/ * sec; int /*<<< orphan*/ * query; } ;
struct req {int psz; int /*<<< orphan*/ ** p; TYPE_1__ q; } ;
typedef  enum focus { ____Placeholder_focus } focus ;

/* Variables and functions */
 int FOCUS_QUERY ; 
 int arch_MAX ; 
 char** arch_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* scriptname ; 
 int sec_MAX ; 
 char** sec_names ; 
 char** sec_numbers ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const struct req *req, enum focus focus)
{
	int		 i;

	FUNC1("<form action=\"/%s\" method=\"get\">\n"
	       "  <fieldset>\n"
	       "    <legend>Manual Page Search Parameters</legend>\n",
	       scriptname);

	/* Write query input box. */

	FUNC1("    <input type=\"search\" name=\"query\" value=\"");
	if (req->q.query != NULL)
		FUNC0(req->q.query);
	FUNC1( "\" size=\"40\"");
	if (focus == FOCUS_QUERY)
		FUNC1(" autofocus");
	FUNC2(">");

	/* Write submission buttons. */

	FUNC1(	"    <button type=\"submit\" name=\"apropos\" value=\"0\">"
		"man</button>\n"
		"    <button type=\"submit\" name=\"apropos\" value=\"1\">"
		"apropos</button>\n"
		"    <br/>\n");

	/* Write section selector. */

	FUNC2("    <select name=\"sec\">");
	for (i = 0; i < sec_MAX; i++) {
		FUNC1("      <option value=\"%s\"", sec_numbers[i]);
		if (NULL != req->q.sec &&
		    0 == FUNC3(sec_numbers[i], req->q.sec))
			FUNC1(" selected=\"selected\"");
		FUNC1(">%s</option>\n", sec_names[i]);
	}
	FUNC2("    </select>");

	/* Write architecture selector. */

	FUNC1(	"    <select name=\"arch\">\n"
		"      <option value=\"default\"");
	if (NULL == req->q.arch)
		FUNC1(" selected=\"selected\"");
	FUNC2(">All Architectures</option>");
	for (i = 0; i < arch_MAX; i++) {
		FUNC1("      <option");
		if (NULL != req->q.arch &&
		    0 == FUNC3(arch_names[i], req->q.arch))
			FUNC1(" selected=\"selected\"");
		FUNC1(">%s</option>\n", arch_names[i]);
	}
	FUNC2("    </select>");

	/* Write manpath selector. */

	if (req->psz > 1) {
		FUNC2("    <select name=\"manpath\">");
		for (i = 0; i < (int)req->psz; i++) {
			FUNC1("      <option");
			if (FUNC3(req->q.manpath, req->p[i]) == 0)
				FUNC1(" selected=\"selected\"");
			FUNC1(">");
			FUNC0(req->p[i]);
			FUNC2("</option>");
		}
		FUNC2("    </select>");
	}

	FUNC2("  </fieldset>\n"
	     "</form>");
}
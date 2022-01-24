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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 scalar_t__ FUNC1 (struct expression*,struct value**) ; 
 scalar_t__ FUNC2 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct expression**) ; 
 struct ui_file* gdb_stderr ; 
 struct cleanup* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct ui_file* parse_gdberr ; 
 scalar_t__ FUNC4 (struct value*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC5 (char const*) ; 

CORE_ADDR
FUNC6(const char *exp, int quiet)
{
	struct ui_file *old_stderr;
	struct cleanup *old_chain;
	struct expression *expr;
	struct value *val;
	char *s;
	CORE_ADDR n;

	old_stderr = gdb_stderr;
	if (quiet)
		gdb_stderr = parse_gdberr;
	n = 0;
	s = FUNC5(exp);
	old_chain = FUNC3(xfree, s);
	if (FUNC2(&s, NULL, 0, &expr) && *s == '\0') {
		FUNC3(free_current_contents, &expr);
		if (FUNC1(expr, &val))
		    n = FUNC4(val);
	}
	FUNC0(old_chain);
	gdb_stderr = old_stderr;
	return (n);
}
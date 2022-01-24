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
struct test {scalar_t__ res; char* str; scalar_t__ base; scalar_t__ lo; scalar_t__ hi; int rstatus; int /*<<< orphan*/ * end; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct test *t, intmax_t rv, char *end, int rstatus)
{

	if (rv != t->res)
		FUNC0("strtoi(%s, &end, %d, %jd, %jd, &rstatus)"
		    " failed (rv = %jd)", t->str, t->base, t->lo, t->hi, rv);

	if (rstatus != t->rstatus)
		FUNC0("strtoi(%s, &end, %d, %jd, %jd, &rstatus)"
		    " failed (rstatus: %d ('%s'))",
		    t->str, t->base, t->lo, t->hi, rstatus, FUNC2(rstatus));

	if ((t->end != NULL && FUNC1(t->end, end) != 0) ||
	    (t->end == NULL && *end != '\0'))
		FUNC0("invalid end pointer ('%s') from "
		    "strtoi(%s, &end, %d, %jd, %jd, &rstatus)",
		     end, t->str, t->base, t->lo, t->hi);
}
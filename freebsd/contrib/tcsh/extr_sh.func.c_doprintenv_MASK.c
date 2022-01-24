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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STR1 ; 
 int /*<<< orphan*/ ** STR_environ ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int output_raw ; 
 int /*<<< orphan*/  output_raw_restore ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int xlate_cr ; 
 int /*<<< orphan*/  xlate_cr_cleanup ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

void
FUNC7(Char **v, struct command *c) 
{
    Char   *e;

    FUNC0(c);
    v++;
    if (*v == 0) {
	Char **ep;

	xlate_cr = 1;
	FUNC1(&xlate_cr, xlate_cr_cleanup);
	for (ep = STR_environ; *ep; ep++) {
	    if (setintr) {
		int old_pintr_disabled;

		FUNC3(&old_pintr_disabled);
		FUNC2(&old_pintr_disabled);
	    }
	    FUNC6("%S\n", *ep);
	}
	FUNC2(&xlate_cr);
    }
    else if ((e = FUNC5(*v)) != NULL) {
	int old_output_raw;

	old_output_raw = output_raw;
	output_raw = 1;
	FUNC1(&old_output_raw, output_raw_restore);
	FUNC6("%S\n", e);
	FUNC2(&old_output_raw);
    }
    else
	FUNC4(STRstatus, STR1, VAR_READWRITE);
}
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
 int ERR_EXPRESSION ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ chkstop ; 
 scalar_t__ evalvec ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ***) ; 
 scalar_t__ intact ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(Char **v, struct command *c)
{
    FUNC0(c);

    if (chkstop == 0 && (intty || intact) && evalvec == 0)
	FUNC3(0);
    /*
     * Don't DEMAND parentheses here either.
     */
    v++;
    if (*v) {
	FUNC5(STRstatus, FUNC4(FUNC2(&v)), VAR_READWRITE);
	if (*v)
	    FUNC6(ERR_NAME | ERR_EXPRESSION);
    }
    FUNC1();
#if 0
    if (intty)
#endif
    /* Always close, why only on ttys? */
	FUNC7(SHIN);
}
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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dp ; 
 int onstack ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ seenm ; 
 scalar_t__ seenn ; 
 scalar_t__ seenr ; 

__attribute__((used)) static void
FUNC4(int parm, int n)
/* push n copies of param on the terminfo stack if not already there */
{
    if (seenr) {
	if (parm == 1)
	    parm = 2;
	else if (parm == 2)
	    parm = 1;
    }

    while (n--) {
	dp = FUNC3(dp, "%p");
	dp = FUNC2(dp, '0' + parm);
    }

    if (onstack == parm) {
	if (n > 1) {
	    FUNC0("string may not be optimal");
	    dp = FUNC3(dp, "%Pa");
	    while (n--) {
		dp = FUNC3(dp, "%ga");
	    }
	}
	return;
    }
    if (onstack != 0)
	FUNC1();

    onstack = parm;

    if (seenn && parm < 3) {
	dp = FUNC3(dp, "%{96}%^");
    }

    if (seenm && parm < 3) {
	dp = FUNC3(dp, "%{127}%^");
    }
}
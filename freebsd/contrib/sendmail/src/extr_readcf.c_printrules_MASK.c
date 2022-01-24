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
struct rewrite {int /*<<< orphan*/  r_rhs; int /*<<< orphan*/  r_lhs; struct rewrite* r_next; } ;

/* Variables and functions */
 struct rewrite** RewriteRules ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3()
{
	register struct rewrite *rwp;
	register int ruleset;

	for (ruleset = 0; ruleset < 10; ruleset++)
	{
		if (RewriteRules[ruleset] == NULL)
			continue;
		FUNC2("\n----Rule Set %d:", ruleset);

		for (rwp = RewriteRules[ruleset]; rwp != NULL; rwp = rwp->r_next)
		{
			FUNC2("\nLHS:");
			FUNC0(FUNC1(), rwp->r_lhs);
			FUNC2("RHS:");
			FUNC0(FUNC1(), rwp->r_rhs);
		}
	}
}
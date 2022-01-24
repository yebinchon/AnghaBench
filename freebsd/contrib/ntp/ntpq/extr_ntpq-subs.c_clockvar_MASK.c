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
struct varlist {int dummy; } ;
struct parse {int nargs; TYPE_1__* argval; } ;
typedef  scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ uval; int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READCLOCK ; 
 int MAXLIST ; 
 int /*<<< orphan*/  TYPE_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct varlist*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct varlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct varlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlist*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(
	struct parse *pcmd,
	FILE *fp
	)
{
	associd_t associd;
	struct varlist tmplist[MAXLIST];

	/* HMS: uval? */
	if (pcmd->nargs == 0 || pcmd->argval[0].uval == 0)
		associd = 0;
	else if ((associd = FUNC1(pcmd->argval[0].uval)) == 0)
		return;

	FUNC0(tmplist);
	if (pcmd->nargs >= 2)
		FUNC2(tmplist, pcmd->argval[1].string);

	FUNC4(tmplist, associd, CTL_OP_READCLOCK, TYPE_CLOCK, fp);

	FUNC3(tmplist);
}
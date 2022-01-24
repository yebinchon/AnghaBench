#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct varlist {int dummy; } ;
struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_4__ {int /*<<< orphan*/  assid; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; int /*<<< orphan*/  uval; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READVAR ; 
 int MAXLIST ; 
 int /*<<< orphan*/  TYPE_PEER ; 
 int /*<<< orphan*/  FUNC0 (struct varlist*) ; 
 TYPE_2__* assoc_cache ; 
 int /*<<< orphan*/  FUNC1 (struct varlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct varlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct varlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 struct varlist* g_varlist ; 

__attribute__((used)) static void
FUNC5(
	struct parse *pcmd,
	FILE *fp
	)
{
	int i;
	int from;
	int to;
	struct varlist tmplist[MAXLIST];
	struct varlist *pvars;

	if (!FUNC4(pcmd->argval[0].uval, pcmd->argval[1].uval,
				&from, &to, fp))
		return;

	FUNC0(tmplist);
	if (pcmd->nargs >= 3) {
		FUNC1(tmplist, pcmd->argval[2].string);
		pvars = tmplist;
	} else {
		pvars = g_varlist;
	}

	for (i = from; i <= to; i++) {
		if (!FUNC3(pvars, assoc_cache[i].assid, CTL_OP_READVAR,
			    TYPE_PEER, fp))
			break;
	}

	if (pvars == tmplist)
		FUNC2(tmplist);

	return;
}
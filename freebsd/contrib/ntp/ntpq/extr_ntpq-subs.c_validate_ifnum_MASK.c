#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_3__ {int ifnum; } ;
typedef  TYPE_1__ ifstats_row ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IFSTATS_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(
	FILE *		fp,
	u_int		ifnum,
	int *		pfields,
	ifstats_row *	prow
	)
{
	if (prow->ifnum == ifnum)
		return;
	if (prow->ifnum + 1 <= ifnum) {
		if (*pfields < IFSTATS_FIELDS)
			FUNC1(*fp, "Warning: incomplete row with %d (of %d) fields\n",
				*pfields, IFSTATS_FIELDS);
		*pfields = 0;
		prow->ifnum = ifnum;
		return;
	}
	FUNC1(stderr,
		"received if index %u, have %d of %d fields for index %u, aborting.\n",
		ifnum, *pfields, IFSTATS_FIELDS, prow->ifnum);
	FUNC0(1);
}
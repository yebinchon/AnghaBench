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
typedef  scalar_t__ u_short ;
struct varlist {int /*<<< orphan*/ * name; } ;
typedef  int associd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TYPE_CLOCK ; 
 char* currenthost ; 
 int FUNC0 (struct varlist*,int,int,int /*<<< orphan*/ ,scalar_t__*,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int numhosts ; 
 scalar_t__ old_rv ; 
 int /*<<< orphan*/  FUNC2 (size_t,char const*,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(
	struct varlist *vlist,
	associd_t associd,
	int op,
	int type,
	FILE *fp
	)
{
	const char *datap;
	int res;
	size_t dsize;
	u_short rstatus;
	int quiet;

	/*
	 * if we're asking for specific variables don't include the
	 * status header line in the output.
	 */
	if (old_rv)
		quiet = 0;
	else
		quiet = (vlist->name != NULL);

	res = FUNC0(vlist, op, associd, 0, &rstatus, &dsize, &datap);

	if (res != 0)
		return 0;

	if (numhosts > 1)
		FUNC1(fp, "server=%s ", currenthost);
	if (dsize == 0) {
		if (associd == 0)
			FUNC1(fp, "No system%s variables returned\n",
				(type == TYPE_CLOCK) ? " clock" : "");
		else
			FUNC1(fp,
				"No information returned for%s association %u\n",
				(type == TYPE_CLOCK) ? " clock" : "",
				associd);
		return 1;
	}

	if (!quiet)
		FUNC1(fp, "associd=%u ", associd);
	FUNC2(dsize, datap, (int)rstatus, type, quiet, fp);
	return 1;
}
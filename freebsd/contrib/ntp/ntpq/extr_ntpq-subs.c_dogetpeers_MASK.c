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
struct varlist {int dummy; } ;
typedef  int associd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READVAR ; 
 char* currenthost ; 
 int FUNC0 (struct varlist*,int,int,size_t,char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,size_t*,char const**) ; 
 int FUNC2 (struct varlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int numhosts ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(
	struct varlist *pvl,
	associd_t associd,
	FILE *fp,
	int af
	)
{
	const char *datap;
	int res;
	size_t dsize;
	u_short rstatus;

#ifdef notdef
	res = doquerylist(pvl, CTL_OP_READVAR, associd, 0, &rstatus,
			  &dsize, &datap);
#else
	/*
	 * Damn fuzzballs
	 */
	res = FUNC1(CTL_OP_READVAR, associd, 0, 0, NULL, &rstatus,
			  &dsize, &datap);
#endif

	if (res != 0)
		return 0;

	if (dsize == 0) {
		if (numhosts > 1)
			FUNC3(stderr, "server=%s ", currenthost);
		FUNC3(stderr,
			"***No information returned for association %u\n",
			associd);
		return 0;
	}

	return FUNC0(pvl, associd, (int)rstatus, dsize, datap,
			    fp, af);
}
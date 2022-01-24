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
typedef  int /*<<< orphan*/  u_short ;
typedef  int associd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READVAR ; 
 char* currenthost ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int numhosts ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(
	associd_t	associd,
	char *		resultbuf,
	int		maxsize
	)
{
	const char *	datap;
	int		res;
	size_t		dsize;
	u_short		rstatus;

	res = FUNC0(CTL_OP_READVAR, associd, 0, 0, NULL, &rstatus,
		      &dsize, &datap);
	if (res != 0)
		return 0;
	if (dsize <= 0) {
		if (numhosts > 1)
			FUNC1(stderr, "server=%s ", currenthost);
		FUNC1(stderr,
			"***No information returned for association %d\n",
			associd);

		return 0;
	}
	if (dsize > maxsize) 
		dsize = maxsize;
	FUNC2(resultbuf, datap, dsize);

	return dsize;
}
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
typedef  int /*<<< orphan*/  associd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READCLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,char const**) ; 
 int /*<<< orphan*/  ntpq_varlist ; 
 int numhosts ; 

int
FUNC2(
	associd_t	associd,
	char *		resultbuf,
	int		maxsize
	)
{
	const char *datap;
	int res;
	size_t dsize;
	u_short rstatus;

	res = FUNC1(ntpq_varlist, CTL_OP_READCLOCK, associd,
			       0, &rstatus, &dsize, &datap);
	if (res != 0)
		return 0;

	if (dsize == 0) {
		if (numhosts > 1) /* no information returned from server */
			return 0;
	} else {
		if (dsize > maxsize) 
			dsize = maxsize;
		FUNC0(resultbuf, datap, dsize);
	}

	return dsize;
}
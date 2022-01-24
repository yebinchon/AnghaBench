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
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {size_t assid; void* status; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_OP_READSTAT ; 
 TYPE_1__* assoc_cache ; 
 size_t assoc_cache_slots ; 
 char* currenthost ; 
 scalar_t__ debug ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/  const) ; 
 size_t numassoc ; 
 int numhosts ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(
	FILE *fp
	)
{
	const char *datap;
	const u_short *pus;
	int res;
	size_t dsize;
	u_short rstatus;

	res = FUNC0(CTL_OP_READSTAT, 0, 0, 0, (char *)0, &rstatus,
			  &dsize, &datap);

	if (res != 0)
		return 0;

	if (dsize == 0) {
		if (numhosts > 1)
			FUNC1(*fp, "server=%s ", currenthost);
		FUNC1(*fp, "No association ID's returned\n");
		return 0;
	}

	if (dsize & 0x3) {
		if (numhosts > 1)
			FUNC1(stderr, "server=%s ", currenthost);
		FUNC1(stderr,
			"***Server returned %zu octets, should be multiple of 4\n",
			dsize);
		return 0;
	}

	numassoc = 0;

	while (dsize > 0) {
		if (numassoc >= assoc_cache_slots) {
			FUNC2();
		}
		pus = (const void *)datap;
		assoc_cache[numassoc].assid = FUNC3(*pus);
		datap += sizeof(*pus);
		pus = (const void *)datap;
		assoc_cache[numassoc].status = FUNC3(*pus);
		datap += sizeof(*pus);
		dsize -= 2 * sizeof(*pus);
		if (debug) {
			FUNC1(stderr, "[%u] ",
				assoc_cache[numassoc].assid);
		}
		numassoc++;
	}
	if (debug) {
		FUNC1(stderr, "\n%d associations total\n", numassoc);
	}
	FUNC4();
	return 1;
}
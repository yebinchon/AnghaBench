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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct parse {int dummy; } ;
struct info_mem_stats {scalar_t__* hashcount; int /*<<< orphan*/  demobilizations; int /*<<< orphan*/  allocations; int /*<<< orphan*/  findpeer_calls; int /*<<< orphan*/  freepeermem; int /*<<< orphan*/  totalpeermem; int /*<<< orphan*/  timereset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int NTP_HASH_SIZE ; 
 int /*<<< orphan*/  REQ_MEM_STATS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ impl_ver ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_mem_stats *mem;
	int i;
	size_t items;
	size_t itemsize;
	int res;

again:
	res = FUNC2(impl_ver, REQ_MEM_STATS, 0, 0, 0, NULL, &items,
		      &itemsize, (void *)&mem, 0, sizeof(*mem));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
		return;

	if (!FUNC0(items, fp))
		return;

	if (!FUNC1(itemsize, sizeof(*mem)))
		return;

	FUNC3(fp, "time since reset:     %lu\n",
		(u_long)FUNC4(mem->timereset));
	FUNC3(fp, "total peer memory:    %u\n",
		(u_int)FUNC5(mem->totalpeermem));
	FUNC3(fp, "free peer memory:     %u\n",
		(u_int)FUNC5(mem->freepeermem));
	FUNC3(fp, "calls to findpeer:    %lu\n",
		(u_long)FUNC4(mem->findpeer_calls));
	FUNC3(fp, "new peer allocations: %lu\n",
		(u_long)FUNC4(mem->allocations));
	FUNC3(fp, "peer demobilizations: %lu\n",
		(u_long)FUNC4(mem->demobilizations));

	FUNC3(fp, "hash table counts:   ");
	for (i = 0; i < NTP_HASH_SIZE; i++) {
		FUNC3(fp, "%4d", (int)mem->hashcount[i]);
		if ((i % 8) == 7 && i != (NTP_HASH_SIZE-1))
			FUNC3(fp, "\n                     ");
	}
	FUNC3(fp, "\n");
}
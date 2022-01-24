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
struct parse {int dummy; } ;
struct old_info_sys_stats {int dummy; } ;
struct info_sys_stats {int /*<<< orphan*/  limitrejected; int /*<<< orphan*/  badauth; int /*<<< orphan*/  badlength; int /*<<< orphan*/  denied; int /*<<< orphan*/  unknownversion; int /*<<< orphan*/  oldversionpkt; int /*<<< orphan*/  newversionpkt; int /*<<< orphan*/  processed; int /*<<< orphan*/  received; int /*<<< orphan*/  timereset; int /*<<< orphan*/  timeup; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  REQ_SYS_STATS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ impl_ver ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_sys_stats *ss;
	size_t items;
	size_t itemsize;
	int res;

again:
	res = FUNC2(impl_ver, REQ_SYS_STATS, 0, 0, 0, (char *)NULL,
		      &items, &itemsize, (void *)&ss, 0, 
		      sizeof(struct info_sys_stats));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
	    return;

	if (!FUNC0(items, fp))
	    return;

	if (itemsize != sizeof(struct info_sys_stats) &&
	    itemsize != sizeof(struct old_info_sys_stats)) {
		/* issue warning according to new structure size */
		FUNC1(itemsize, sizeof(struct info_sys_stats));
		return;
	}
	FUNC3(fp, "time since restart:     %lu\n",
		(u_long)FUNC4(ss->timeup));
	FUNC3(fp, "time since reset:       %lu\n",
		(u_long)FUNC4(ss->timereset));
	FUNC3(fp, "packets received:       %lu\n",
		(u_long)FUNC4(ss->received));
	FUNC3(fp, "packets processed:      %lu\n",
		(u_long)FUNC4(ss->processed));
	FUNC3(fp, "current version:        %lu\n",
		(u_long)FUNC4(ss->newversionpkt));
	FUNC3(fp, "previous version:       %lu\n",
		(u_long)FUNC4(ss->oldversionpkt));
	FUNC3(fp, "declined:               %lu\n",
		(u_long)FUNC4(ss->unknownversion));
	FUNC3(fp, "access denied:          %lu\n",
		(u_long)FUNC4(ss->denied));
	FUNC3(fp, "bad length or format:   %lu\n",
		(u_long)FUNC4(ss->badlength));
	FUNC3(fp, "bad authentication:     %lu\n",
		(u_long)FUNC4(ss->badauth));
	if (itemsize != sizeof(struct info_sys_stats))
	    return;
	
	FUNC3(fp, "rate exceeded:          %lu\n",
	       (u_long)FUNC4(ss->limitrejected));
}
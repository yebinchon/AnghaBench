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
struct info_timer_stats {int /*<<< orphan*/  xmtcalls; int /*<<< orphan*/  overflows; int /*<<< orphan*/  alarms; int /*<<< orphan*/  timereset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  REQ_TIMER_STATS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ impl_ver ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_timer_stats *tim;
	size_t items;
	size_t itemsize;
	int res;

again:
	res = FUNC2(impl_ver, REQ_TIMER_STATS, 0, 0, 0, NULL, &items,
		      &itemsize, (void *)&tim, 0, sizeof(*tim));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
		return;

	if (!FUNC0(items, fp))
		return;

	if (!FUNC1(itemsize, sizeof(*tim)))
		return;

	FUNC3(fp, "time since reset:  %lu\n",
		(u_long)FUNC4(tim->timereset));
	FUNC3(fp, "alarms handled:    %lu\n",
		(u_long)FUNC4(tim->alarms));
	FUNC3(fp, "alarm overruns:    %lu\n",
		(u_long)FUNC4(tim->overflows));
	FUNC3(fp, "calls to transmit: %lu\n",
		(u_long)FUNC4(tim->xmtcalls));
}
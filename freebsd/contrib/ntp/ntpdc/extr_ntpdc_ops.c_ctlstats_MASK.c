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
struct info_control {int /*<<< orphan*/  numctlbadop; int /*<<< orphan*/  numctldatatooshort; int /*<<< orphan*/  numctlbadversion; int /*<<< orphan*/  numctlbadoffset; int /*<<< orphan*/  numctlinputerr; int /*<<< orphan*/  numctlinputfrag; int /*<<< orphan*/  numctlinputresp; int /*<<< orphan*/  numctltooshort; int /*<<< orphan*/  numctlbadpkts; int /*<<< orphan*/  numctlerrors; int /*<<< orphan*/  numasyncmsgs; int /*<<< orphan*/  numctlfrags; int /*<<< orphan*/  numctlresponses; int /*<<< orphan*/  numctlreq; int /*<<< orphan*/  ctltimereset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  REQ_GET_CTLSTATS ; 
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
	struct info_control *ic;
	size_t items;
	size_t itemsize;
	int res;

again:
	res = FUNC2(impl_ver, REQ_GET_CTLSTATS, 0, 0, 0, NULL, &items,
		      &itemsize, (void *)&ic, 0, sizeof(*ic));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
		return;

	if (!FUNC0(items, fp))
		return;

	if (!FUNC1(itemsize, sizeof(*ic)))
		return;

	FUNC3(fp, "time since reset:       %lu\n",
		(u_long)FUNC4(ic->ctltimereset));
	FUNC3(fp, "requests received:      %lu\n",
		(u_long)FUNC4(ic->numctlreq));
	FUNC3(fp, "responses sent:         %lu\n",
		(u_long)FUNC4(ic->numctlresponses));
	FUNC3(fp, "fragments sent:         %lu\n",
		(u_long)FUNC4(ic->numctlfrags));
	FUNC3(fp, "async messages sent:    %lu\n",
		(u_long)FUNC4(ic->numasyncmsgs));
	FUNC3(fp, "error msgs sent:        %lu\n",
		(u_long)FUNC4(ic->numctlerrors));
	FUNC3(fp, "total bad pkts:         %lu\n",
		(u_long)FUNC4(ic->numctlbadpkts));
	FUNC3(fp, "packet too short:       %lu\n",
		(u_long)FUNC4(ic->numctltooshort));
	FUNC3(fp, "response on input:      %lu\n",
		(u_long)FUNC4(ic->numctlinputresp));
	FUNC3(fp, "fragment on input:      %lu\n",
		(u_long)FUNC4(ic->numctlinputfrag));
	FUNC3(fp, "error set on input:     %lu\n",
		(u_long)FUNC4(ic->numctlinputerr));
	FUNC3(fp, "bad offset on input:    %lu\n",
		(u_long)FUNC4(ic->numctlbadoffset));
	FUNC3(fp, "bad version packets:    %lu\n",
		(u_long)FUNC4(ic->numctlbadversion));
	FUNC3(fp, "data in pkt too short:  %lu\n",
		(u_long)FUNC4(ic->numctldatatooshort));
	FUNC3(fp, "unknown op codes:       %lu\n",
		(u_long)FUNC4(ic->numctlbadop));
}
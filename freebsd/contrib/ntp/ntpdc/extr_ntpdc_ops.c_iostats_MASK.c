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
typedef  int u_long ;
typedef  int u_int ;
struct parse {int dummy; } ;
struct info_io_stats {int /*<<< orphan*/  int_received; int /*<<< orphan*/  interrupts; int /*<<< orphan*/  notsent; int /*<<< orphan*/  sent; int /*<<< orphan*/  received; int /*<<< orphan*/  ignored; int /*<<< orphan*/  dropped; int /*<<< orphan*/  lowwater; int /*<<< orphan*/  fullrecvbufs; int /*<<< orphan*/  freerecvbufs; int /*<<< orphan*/  totalrecvbufs; int /*<<< orphan*/  timereset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IMPL_XNTPD ; 
 scalar_t__ IMPL_XNTPD_OLD ; 
 int INFO_ERR_IMPL ; 
 int /*<<< orphan*/  REQ_IO_STATS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ impl_ver ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_io_stats *io;
	size_t items;
	size_t itemsize;
	int res;

again:
	res = FUNC2(impl_ver, REQ_IO_STATS, 0, 0, 0, NULL, &items,
		      &itemsize, (void *)&io, 0, sizeof(*io));
	
	if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
		impl_ver = IMPL_XNTPD_OLD;
		goto again;
	}

	if (res != 0)
		return;

	if (!FUNC0(items, fp))
		return;

	if (!FUNC1(itemsize, sizeof(*io)))
		return;

	FUNC3(fp, "time since reset:     %lu\n",
		(u_long)FUNC4(io->timereset));
	FUNC3(fp, "receive buffers:      %u\n",
		(u_int)FUNC5(io->totalrecvbufs));
	FUNC3(fp, "free receive buffers: %u\n",
		(u_int)FUNC5(io->freerecvbufs));
	FUNC3(fp, "used receive buffers: %u\n",
		(u_int)FUNC5(io->fullrecvbufs));
	FUNC3(fp, "low water refills:    %u\n",
		(u_int)FUNC5(io->lowwater));
	FUNC3(fp, "dropped packets:      %lu\n",
		(u_long)FUNC4(io->dropped));
	FUNC3(fp, "ignored packets:      %lu\n",
		(u_long)FUNC4(io->ignored));
	FUNC3(fp, "received packets:     %lu\n",
		(u_long)FUNC4(io->received));
	FUNC3(fp, "packets sent:         %lu\n",
		(u_long)FUNC4(io->sent));
	FUNC3(fp, "packets not sent:     %lu\n",
		(u_long)FUNC4(io->notsent));
	FUNC3(fp, "interrupts handled:   %lu\n",
		(u_long)FUNC4(io->interrupts));
	FUNC3(fp, "received by int:      %lu\n",
		(u_long)FUNC4(io->int_received));
}
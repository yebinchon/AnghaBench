#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_4__ {int ifnum; char* name; int flags; int ttl; int mcast_count; int received; int sent; int send_errors; int peer_count; int uptime; int /*<<< orphan*/  bcast; int /*<<< orphan*/  addr; scalar_t__ enabled; } ;
typedef  TYPE_1__ ifstats_row ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int IFSTATS_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(
	int *		pfields,
	ifstats_row *	prow,
	FILE *		fp
	)
{
	u_int ifnum;

	(*pfields)++;
	/* we understand 12 tags */
	if (IFSTATS_FIELDS > *pfields)	
		return;
	/*
	"    interface name                                        send\n"
	" #  address/broadcast     drop flag ttl mc received sent failed peers   uptime\n"
	"==============================================================================\n");
	 */
	FUNC2(fp,
		"%3u %-24.24s %c %4x %3u %2u %6u %6u %6u %5u %8d\n"
		"    %s\n",
		prow->ifnum, prow->name,
		(prow->enabled)
		    ? '.'
		    : 'D',
		prow->flags, prow->ttl, prow->mcast_count,
		prow->received, prow->sent, prow->send_errors,
		prow->peer_count, prow->uptime, FUNC3(&prow->addr));
	if (!FUNC0(&prow->bcast))
		FUNC2(fp, "    %s\n", FUNC3(&prow->bcast));
	ifnum = prow->ifnum;
	FUNC1(*prow);
	prow->ifnum = ifnum;
}
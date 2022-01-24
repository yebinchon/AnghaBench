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
typedef  int /*<<< orphan*/  u_char ;
struct msnlb_heartbeat_pkt {int /*<<< orphan*/  host_ip; int /*<<< orphan*/  virtual_ip; int /*<<< orphan*/  host_prio; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msnlb_heartbeat_pkt const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(netdissect_options *ndo, const u_char *bp)
{
	const struct msnlb_heartbeat_pkt *hb;

	hb = (const struct msnlb_heartbeat_pkt *)bp;
	FUNC2(*hb);

	FUNC1((ndo, "MS NLB heartbeat, host priority: %u,",
		FUNC0(&(hb->host_prio))));
	FUNC1((ndo, " cluster IP: %s,", FUNC3(ndo, &(hb->virtual_ip))));
	FUNC1((ndo, " host IP: %s", FUNC3(ndo, &(hb->host_ip))));
	return;
trunc:
	FUNC1((ndo, "[|MS NLB]"));
}
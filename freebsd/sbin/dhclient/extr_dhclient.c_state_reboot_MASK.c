#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_2__* client; } ;
struct TYPE_6__ {scalar_t__ is_bootp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * medium; TYPE_1__* config; int /*<<< orphan*/  interval; int /*<<< orphan*/  first_sending; int /*<<< orphan*/  destination; TYPE_3__* active; int /*<<< orphan*/  xid; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  initial_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_REBOOTING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cur_time ; 
 int /*<<< orphan*/  iaddr_broadcast ; 
 int /*<<< orphan*/  FUNC1 (struct interface_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct interface_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct interface_info*) ; 

void
FUNC4(void *ipp)
{
	struct interface_info *ip = ipp;

	/* If we don't remember an active lease, go straight to INIT. */
	if (!ip->client->active || ip->client->active->is_bootp) {
		FUNC3(ip);
		return;
	}

	/* We are in the rebooting state. */
	ip->client->state = S_REBOOTING;

	/* make_request doesn't initialize xid because it normally comes
	   from the DHCPDISCOVER, but we haven't sent a DHCPDISCOVER,
	   so pick an xid now. */
	ip->client->xid = FUNC0();

	/* Make a DHCPREQUEST packet, and set appropriate per-interface
	   flags. */
	FUNC1(ip, ip->client->active);
	ip->client->destination = iaddr_broadcast;
	ip->client->first_sending = cur_time;
	ip->client->interval = ip->client->config->initial_interval;

	/* Zap the medium list... */
	ip->client->medium = NULL;

	/* Send out the first DHCPREQUEST packet. */
	FUNC2(ip);
}
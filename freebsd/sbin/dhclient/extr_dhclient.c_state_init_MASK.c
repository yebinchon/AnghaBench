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
struct interface_info {TYPE_3__* client; } ;
struct TYPE_4__ {int /*<<< orphan*/  xid; } ;
struct TYPE_6__ {TYPE_2__* config; int /*<<< orphan*/  interval; int /*<<< orphan*/  first_sending; int /*<<< orphan*/  state; int /*<<< orphan*/  destination; TYPE_1__ packet; int /*<<< orphan*/  xid; int /*<<< orphan*/  active; } ;
struct TYPE_5__ {int /*<<< orphan*/  initial_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  S_SELECTING ; 
 int /*<<< orphan*/  cur_time ; 
 int /*<<< orphan*/  iaddr_broadcast ; 
 int /*<<< orphan*/  FUNC1 (struct interface_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct interface_info*) ; 
 int /*<<< orphan*/  state ; 

void
FUNC3(void *ipp)
{
	struct interface_info *ip = ipp;

	FUNC0(state, S_INIT);

	/* Make a DHCPDISCOVER packet, and set appropriate per-interface
	   flags. */
	FUNC1(ip, ip->client->active);
	ip->client->xid = ip->client->packet.xid;
	ip->client->destination = iaddr_broadcast;
	ip->client->state = S_SELECTING;
	ip->client->first_sending = cur_time;
	ip->client->interval = ip->client->config->initial_interval;

	/* Add an immediate timeout to cause the first DHCPDISCOVER packet
	   to go out. */
	FUNC2(ip);
}
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
struct upnp_wps_device_sm {int started; int multicast_sd; int ssdp_sd; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ip_addr_text; int /*<<< orphan*/  ip_addr; scalar_t__ advertise_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct upnp_wps_device_sm*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct upnp_wps_device_sm*) ; 
 scalar_t__ FUNC4 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC5 (struct upnp_wps_device_sm*) ; 
 scalar_t__ FUNC6 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC8(struct upnp_wps_device_sm *sm, char *net_if)
{
	if (!sm || !net_if)
		return -1;

	if (sm->started)
		FUNC5(sm);

	sm->multicast_sd = -1;
	sm->ssdp_sd = -1;
	sm->started = 1;
	sm->advertise_count = 0;

	/* Fix up linux multicast handling */
	if (FUNC0(net_if))
		goto fail;

	/* Determine which IP and mac address we're using */
	if (FUNC2(net_if, &sm->ip_addr, &sm->ip_addr_text,
			   sm->mac_addr)) {
		FUNC7(MSG_INFO, "WPS UPnP: Could not get IP/MAC address "
			   "for %s. Does it have IP address?", net_if);
		goto fail;
	}

	/* Listen for incoming TCP connections so that others
	 * can fetch our "xml files" from us.
	 */
	if (FUNC6(sm))
		goto fail;

	/* Set up for receiving discovery (UDP) packets */
	if (FUNC3(sm))
		goto fail;

	/* Set up for sending multicast */
	if (FUNC4(sm) < 0)
		goto fail;

	/*
	 * Broadcast NOTIFY messages to let the world know we exist.
	 * This is done via a state machine since the messages should not be
	 * all sent out at once.
	 */
	if (FUNC1(sm))
		goto fail;

	return 0;

fail:
	FUNC5(sm);
	return -1;
}
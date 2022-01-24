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
struct upnp_wps_device_sm {int multicast_sd; scalar_t__ started; int /*<<< orphan*/ * ip_addr_text; int /*<<< orphan*/ * wlanevent; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  msearch_replies; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct upnp_wps_device_sm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct upnp_wps_device_sm *sm)
{
	if (!sm || !sm->started)
		return;

	FUNC8(MSG_DEBUG, "WPS UPnP: Stop device");
	FUNC7(sm);
	FUNC4(sm);
	FUNC5(&sm->msearch_replies);
	FUNC6(&sm->subscriptions, NULL);

	FUNC0(sm, 1);

	FUNC2(sm);
	FUNC3(sm->wlanevent);
	sm->wlanevent = NULL;
	FUNC3(sm->ip_addr_text);
	sm->ip_addr_text = NULL;
	if (sm->multicast_sd >= 0)
		FUNC1(sm->multicast_sd);
	sm->multicast_sd = -1;

	sm->started = 0;
}
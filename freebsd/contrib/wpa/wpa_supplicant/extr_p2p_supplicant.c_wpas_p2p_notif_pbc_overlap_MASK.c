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
struct wpa_supplicant {scalar_t__ p2p_group_interface; struct wpa_supplicant* p2pdev; int /*<<< orphan*/  p2p_in_provisioning; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ; 
 int /*<<< orphan*/  WPS_EVENT_OVERLAP ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

int FUNC3(struct wpa_supplicant *wpa_s)
{
	if (wpa_s->p2p_group_interface != P2P_GROUP_INTERFACE_CLIENT &&
	    !wpa_s->p2p_in_provisioning)
		return 0; /* not P2P client operation */

	FUNC1(MSG_DEBUG, "P2P: Terminate connection due to WPS PBC "
		   "session overlap");
	if (wpa_s != wpa_s->p2pdev)
		FUNC0(wpa_s->p2pdev, MSG_INFO, WPS_EVENT_OVERLAP);
	FUNC2(wpa_s, 0);
	return 1;
}
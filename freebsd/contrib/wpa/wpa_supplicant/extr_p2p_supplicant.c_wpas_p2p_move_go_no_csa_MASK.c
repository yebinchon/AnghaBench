#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int reassociate; scalar_t__ disconnected; struct wpa_ssid* connect_without_scan; TYPE_1__* global; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ frequency; } ;
struct p2p_go_neg_results {scalar_t__ freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  P2P_EVENT_REMOVE_AND_REFORM_GROUP ; 
 int /*<<< orphan*/  P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,struct p2p_go_neg_results*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct wpa_supplicant *wpa_s)
{
	struct p2p_go_neg_results params;
	struct wpa_ssid *current_ssid = wpa_s->current_ssid;

	FUNC2(wpa_s, MSG_INFO, P2P_EVENT_REMOVE_AND_REFORM_GROUP);

	FUNC1(wpa_s, MSG_DEBUG, "P2P: Move GO from freq=%d MHz",
		current_ssid->frequency);

	/* Stop the AP functionality */
	/* TODO: Should do this in a way that does not indicated to possible
	 * P2P Clients in the group that the group is terminated. */
	FUNC4(wpa_s);

	/* Reselect the GO frequency */
	if (FUNC7(wpa_s, &params, 0, 0, 0, 0, 0, 0, NULL)) {
		FUNC1(wpa_s, MSG_DEBUG, "P2P: Failed to reselect freq");
		FUNC6(wpa_s,
				      P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL);
		return;
	}
	FUNC1(wpa_s, MSG_DEBUG, "P2P: New freq selected for the GO (%u MHz)",
		params.freq);

	if (params.freq &&
	    !FUNC0(wpa_s->global->p2p, params.freq)) {
		FUNC3(MSG_DEBUG,
			   "P2P: Selected freq (%u MHz) is not valid for P2P",
			   params.freq);
		FUNC6(wpa_s,
				      P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL);
		return;
	}

	/* Update the frequency */
	current_ssid->frequency = params.freq;
	wpa_s->connect_without_scan = current_ssid;
	wpa_s->reassociate = 1;
	wpa_s->disconnected = 0;
	FUNC5(wpa_s, 0, 0);
}
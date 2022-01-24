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
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; int reassociate; int /*<<< orphan*/  scan_req; struct wpa_ssid* connect_without_scan; scalar_t__ last_owe_group; int /*<<< orphan*/  disconnected; int /*<<< orphan*/ * next_scan_freqs; int /*<<< orphan*/  eapol; struct wpa_ssid* current_ssid; TYPE_1__* conf; } ;
struct wpa_ssid {int disabled; scalar_t__ id; scalar_t__ mode; scalar_t__ owe_transition_bss_select_count; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NORMAL_SCAN_REQ ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPAS_MODE_MESH ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,struct wpa_ssid*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*) ; 

void FUNC10(struct wpa_supplicant *wpa_s,
				   struct wpa_ssid *ssid)
{

	struct wpa_ssid *other_ssid;
	int disconnected = 0;

	if (ssid && ssid != wpa_s->current_ssid && wpa_s->current_ssid) {
		if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
			wpa_s->own_disconnect_req = 1;
		FUNC3(
			wpa_s, WLAN_REASON_DEAUTH_LEAVING);
		disconnected = 1;
	}

	if (ssid)
		FUNC6(wpa_s, ssid, 1);

	/*
	 * Mark all other networks disabled or mark all networks enabled if no
	 * network specified.
	 */
	for (other_ssid = wpa_s->conf->ssid; other_ssid;
	     other_ssid = other_ssid->next) {
		int was_disabled = other_ssid->disabled;
		if (was_disabled == 2)
			continue; /* do not change persistent P2P group data */

		other_ssid->disabled = ssid ? (ssid->id != other_ssid->id) : 0;
		if (was_disabled && !other_ssid->disabled)
			FUNC6(wpa_s, other_ssid, 0);

		if (was_disabled != other_ssid->disabled)
			FUNC7(wpa_s, other_ssid);
	}

	if (ssid && ssid == wpa_s->current_ssid && wpa_s->current_ssid &&
	    wpa_s->wpa_state >= WPA_AUTHENTICATING) {
		/* We are already associated with the selected network */
		FUNC2(MSG_DEBUG, "Already associated with the "
			   "selected network - do nothing");
		return;
	}

	if (ssid) {
		wpa_s->current_ssid = ssid;
		FUNC0(wpa_s->eapol, NULL, NULL);
		wpa_s->connect_without_scan =
			(ssid->mode == WPAS_MODE_MESH) ? ssid : NULL;

		/*
		 * Don't optimize next scan freqs since a new ESS has been
		 * selected.
		 */
		FUNC1(wpa_s->next_scan_freqs);
		wpa_s->next_scan_freqs = NULL;
	} else {
		wpa_s->connect_without_scan = NULL;
	}

	wpa_s->disconnected = 0;
	wpa_s->reassociate = 1;
	wpa_s->last_owe_group = 0;
	if (ssid)
		ssid->owe_transition_bss_select_count = 0;

	if (wpa_s->connect_without_scan ||
	    FUNC4(wpa_s) != 1) {
		wpa_s->scan_req = NORMAL_SCAN_REQ;
		FUNC9(wpa_s);
		FUNC5(wpa_s, 0, disconnected ? 100000 : 0);
	}

	if (ssid)
		FUNC8(wpa_s, ssid);
}
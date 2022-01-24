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
struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ sched_scanning; int /*<<< orphan*/  conf; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa; struct wpa_ssid* current_ssid; TYPE_1__ sme; struct wpa_ssid* last_ssid; } ;
struct wpa_ssid {int disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wpa_ssid* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpa_ssid*) ; 

int FUNC10(struct wpa_supplicant *wpa_s, int id)
{
	struct wpa_ssid *ssid;
	int was_disabled;

	ssid = FUNC2(wpa_s->conf, id);
	if (!ssid)
		return -1;
	FUNC9(wpa_s, ssid);

	if (wpa_s->last_ssid == ssid)
		wpa_s->last_ssid = NULL;

	if (ssid == wpa_s->current_ssid || !wpa_s->current_ssid) {
#ifdef CONFIG_SME
		wpa_s->sme.prev_bssid_set = 0;
#endif /* CONFIG_SME */
		/*
		 * Invalidate the EAP session cache if the current or
		 * previously used network is removed.
		 */
		FUNC0(wpa_s->eapol);
	}

	if (ssid == wpa_s->current_ssid) {
		FUNC5(wpa_s->wpa, NULL);
		FUNC1(wpa_s->eapol, NULL, NULL);

		if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
			wpa_s->own_disconnect_req = 1;
		FUNC7(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);
	}

	was_disabled = ssid->disabled;

	if (FUNC3(wpa_s->conf, id) < 0)
		return -2;

	if (!was_disabled && wpa_s->sched_scanning) {
		FUNC4(MSG_DEBUG,
			   "Stop ongoing sched_scan to remove network from filters");
		FUNC6(wpa_s);
		FUNC8(wpa_s, 0, 0);
	}

	return 0;
}
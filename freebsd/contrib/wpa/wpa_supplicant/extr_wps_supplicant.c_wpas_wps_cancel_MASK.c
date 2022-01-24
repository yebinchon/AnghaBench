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
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ after_wps; scalar_t__ ap_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPA_ASSOCIATED ; 
 scalar_t__ WPA_DISCONNECTED ; 
 scalar_t__ WPA_SCANNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_wps_clear_timeout ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*) ; 

int FUNC8(struct wpa_supplicant *wpa_s)
{
#ifdef CONFIG_AP
	if (wpa_s->ap_iface) {
		wpa_printf(MSG_DEBUG, "WPS: Cancelling in AP mode");
		return wpa_supplicant_ap_wps_cancel(wpa_s);
	}
#endif /* CONFIG_AP */

	if (wpa_s->wpa_state == WPA_SCANNING ||
	    wpa_s->wpa_state == WPA_DISCONNECTED) {
		FUNC1(MSG_DEBUG, "WPS: Cancel operation - cancel scan");
		FUNC3(wpa_s);
		FUNC5(wpa_s);
	} else if (wpa_s->wpa_state >= WPA_ASSOCIATED) {
		FUNC1(MSG_DEBUG, "WPS: Cancel operation - "
			   "deauthenticate");
		wpa_s->own_disconnect_req = 1;
		FUNC4(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);
		FUNC5(wpa_s);
	} else {
		FUNC7(wpa_s);
		FUNC6(wpa_s);
		if (FUNC0(wpas_wps_clear_timeout, wpa_s, NULL) >
		    0)
			FUNC5(wpa_s);
	}

	wpa_s->after_wps = 0;

	return 0;
}
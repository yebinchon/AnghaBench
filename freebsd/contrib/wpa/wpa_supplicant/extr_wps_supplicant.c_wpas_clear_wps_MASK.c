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
struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa; struct wpa_ssid* current_ssid; scalar_t__ known_wps_freq; scalar_t__ after_wps; } ;
struct wpa_ssid {int key_mgmt; int id; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int WPA_KEY_MGMT_WPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_wps_clear_timeout ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_wps_timeout ; 

__attribute__((used)) static void FUNC8(struct wpa_supplicant *wpa_s)
{
	int id;
	struct wpa_ssid *ssid, *remove_ssid = NULL, *prev_current;

	wpa_s->after_wps = 0;
	wpa_s->known_wps_freq = 0;

	prev_current = wpa_s->current_ssid;

	/* Enable the networks disabled during wpas_wps_reassoc */
	FUNC7(wpa_s);

	FUNC1(wpas_wps_timeout, wpa_s, NULL);
	FUNC1(wpas_wps_clear_timeout, wpa_s, NULL);

	/* Remove any existing WPS network from configuration */
	ssid = wpa_s->conf->ssid;
	while (ssid) {
		if (ssid->key_mgmt & WPA_KEY_MGMT_WPS) {
			if (ssid == wpa_s->current_ssid) {
				wpa_s->own_disconnect_req = 1;
				FUNC4(
					wpa_s, WLAN_REASON_DEAUTH_LEAVING);
			}
			id = ssid->id;
			remove_ssid = ssid;
		} else
			id = -1;
		ssid = ssid->next;
		if (id >= 0) {
			if (prev_current == remove_ssid) {
				FUNC3(wpa_s->wpa, NULL);
				FUNC0(wpa_s->eapol, NULL,
						       NULL);
			}
			FUNC5(wpa_s, remove_ssid);
			FUNC2(wpa_s->conf, id);
		}
	}

	FUNC6(wpa_s);
}
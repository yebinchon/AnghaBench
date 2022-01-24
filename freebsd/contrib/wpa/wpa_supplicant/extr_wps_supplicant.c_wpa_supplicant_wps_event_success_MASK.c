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
struct wpa_supplicant {int wps_success; int /*<<< orphan*/  bssid; scalar_t__ extra_blacklist_count; scalar_t__ current_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPS_EVENT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_wps_reenable_networks_cb ; 

__attribute__((used)) static void FUNC5(struct wpa_supplicant *wpa_s)
{
	FUNC1(wpa_s, MSG_INFO, WPS_EVENT_SUCCESS);
	wpa_s->wps_success = 1;
	FUNC3(wpa_s);
	if (wpa_s->current_ssid)
		FUNC2(wpa_s, wpa_s->current_ssid, 1);
	wpa_s->extra_blacklist_count = 0;

	/*
	 * Enable the networks disabled during wpas_wps_reassoc after 10
	 * seconds. The 10 seconds timer is to allow the data connection to be
	 * formed before allowing other networks to be selected.
	 */
	FUNC0(10, 0, wpas_wps_reenable_networks_cb, wpa_s,
			       NULL);

	FUNC4(wpa_s, wpa_s->bssid, 0);
}
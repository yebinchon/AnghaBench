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
struct wpa_supplicant {TYPE_1__* conf; int /*<<< orphan*/  confname; } ;
struct wpa_ssid {scalar_t__ disabled; scalar_t__ disabled_for_connect; struct wpa_ssid* next; } ;
struct TYPE_2__ {scalar_t__ update_config; struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  wpas_wps_reenable_networks_cb ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s)
{
	struct wpa_ssid *ssid;
	int changed = 0;

	FUNC0(wpas_wps_reenable_networks_cb, wpa_s, NULL);

	for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
		if (ssid->disabled_for_connect && ssid->disabled) {
			ssid->disabled_for_connect = 0;
			ssid->disabled = 0;
			FUNC3(wpa_s, ssid);
			changed++;
		}
	}

	if (changed) {
#ifndef CONFIG_NO_CONFIG_WRITE
		if (wpa_s->conf->update_config &&
		    FUNC1(wpa_s->confname, wpa_s->conf)) {
			FUNC2(MSG_DEBUG, "WPS: Failed to update "
				   "configuration");
		}
#endif /* CONFIG_NO_CONFIG_WRITE */
	}
}
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
struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int /*<<< orphan*/ * bssid; scalar_t__ bssid_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
					   struct wpa_ssid *ssid)
{
	if (wpa_s->current_ssid != ssid)
		return;

	FUNC0(wpa_s, MSG_DEBUG,
		"Network bssid config changed for the current network - within-ESS roaming %s",
		ssid->bssid_set ? "disabled" : "enabled");

	FUNC1(wpa_s, !ssid->bssid_set,
			ssid->bssid_set ? ssid->bssid : NULL);
}
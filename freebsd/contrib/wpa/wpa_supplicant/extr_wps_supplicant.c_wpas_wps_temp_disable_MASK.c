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
struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; scalar_t__ current_ssid; } ;
struct wpa_ssid {int disabled; int disabled_for_connect; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s,
				  struct wpa_ssid *selected)
{
	struct wpa_ssid *ssid;

	if (wpa_s->current_ssid) {
		wpa_s->own_disconnect_req = 1;
		FUNC0(
			wpa_s, WLAN_REASON_DEAUTH_LEAVING);
	}

	/* Mark all other networks disabled and trigger reassociation */
	ssid = wpa_s->conf->ssid;
	while (ssid) {
		int was_disabled = ssid->disabled;
		ssid->disabled_for_connect = 0;
		/*
		 * In case the network object corresponds to a persistent group
		 * then do not send out network disabled signal. In addition,
		 * do not change disabled status of persistent network objects
		 * from 2 to 1 should we connect to another network.
		 */
		if (was_disabled != 2) {
			ssid->disabled = ssid != selected;
			if (was_disabled != ssid->disabled) {
				if (ssid->disabled)
					ssid->disabled_for_connect = 1;
				FUNC1(wpa_s,
								    ssid);
			}
		}
		ssid = ssid->next;
	}
}
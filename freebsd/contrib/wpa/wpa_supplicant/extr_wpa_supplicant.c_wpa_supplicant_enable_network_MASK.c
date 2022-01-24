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
struct wpa_supplicant {scalar_t__ wpa_state; int /*<<< orphan*/  scan_req; scalar_t__ sched_scanning; int /*<<< orphan*/  current_ssid; int /*<<< orphan*/  disconnected; scalar_t__ reassociate; TYPE_1__* conf; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NORMAL_SCAN_REQ ; 
 scalar_t__ WPA_DISCONNECTED ; 
 scalar_t__ WPA_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct wpa_supplicant *wpa_s,
				   struct wpa_ssid *ssid)
{
	if (ssid == NULL) {
		for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next)
			FUNC2(wpa_s, ssid);
	} else
		FUNC2(wpa_s, ssid);

	if (wpa_s->reassociate && !wpa_s->disconnected &&
	    (!wpa_s->current_ssid ||
	     wpa_s->wpa_state == WPA_DISCONNECTED ||
	     wpa_s->wpa_state == WPA_SCANNING)) {
		if (wpa_s->sched_scanning) {
			FUNC0(MSG_DEBUG, "Stop ongoing sched_scan to add "
				   "new network to scan filters");
			FUNC1(wpa_s);
		}

		if (FUNC3(wpa_s) != 1) {
			wpa_s->scan_req = NORMAL_SCAN_REQ;
			FUNC4(wpa_s, 0, 0);
		}
	}
}
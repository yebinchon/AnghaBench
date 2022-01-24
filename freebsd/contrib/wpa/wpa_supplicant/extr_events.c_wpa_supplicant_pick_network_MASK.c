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
struct wpa_supplicant {scalar_t__ last_scan_res_used; int /*<<< orphan*/  blacklist_cleared; int /*<<< orphan*/  countermeasures; scalar_t__ blacklist; TYPE_1__* conf; struct wpa_ssid* next_ssid; int /*<<< orphan*/ * last_scan_res; } ;
struct wpa_ssid {scalar_t__ priority; int /*<<< orphan*/  ext_psk; int /*<<< orphan*/  passphrase; int /*<<< orphan*/  psk_set; scalar_t__ mem_only_psk; struct wpa_ssid* next; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {int num_prio; struct wpa_ssid** pssid; struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_CTRL_REQ_PSK_PASSPHRASE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 struct wpa_bss* FUNC3 (struct wpa_supplicant*,struct wpa_ssid*,struct wpa_ssid**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpa_ssid*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpa_ssid*,char const*,char const*) ; 

struct wpa_bss * FUNC6(struct wpa_supplicant *wpa_s,
					     struct wpa_ssid **selected_ssid)
{
	struct wpa_bss *selected = NULL;
	int prio;
	struct wpa_ssid *next_ssid = NULL;
	struct wpa_ssid *ssid;

	if (wpa_s->last_scan_res == NULL ||
	    wpa_s->last_scan_res_used == 0)
		return NULL; /* no scan results from last update */

	if (wpa_s->next_ssid) {
		/* check that next_ssid is still valid */
		for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
			if (ssid == wpa_s->next_ssid)
				break;
		}
		next_ssid = ssid;
		wpa_s->next_ssid = NULL;
	}

	while (selected == NULL) {
		for (prio = 0; prio < wpa_s->conf->num_prio; prio++) {
			if (next_ssid && next_ssid->priority ==
			    wpa_s->conf->pssid[prio]->priority) {
				selected = FUNC3(
					wpa_s, next_ssid, selected_ssid, 1);
				if (selected)
					break;
			}
			selected = FUNC3(
				wpa_s, wpa_s->conf->pssid[prio],
				selected_ssid, 0);
			if (selected)
				break;
		}

		if (selected == NULL && wpa_s->blacklist &&
		    !wpa_s->countermeasures) {
			FUNC1(wpa_s, MSG_DEBUG, "No APs found - clear "
				"blacklist and try again");
			FUNC0(wpa_s);
			wpa_s->blacklist_cleared++;
		} else if (selected == NULL)
			break;
	}

	ssid = *selected_ssid;
	if (selected && ssid && ssid->mem_only_psk && !ssid->psk_set &&
	    !ssid->passphrase && !ssid->ext_psk) {
		const char *field_name, *txt = NULL;

		FUNC1(wpa_s, MSG_DEBUG,
			"PSK/passphrase not yet available for the selected network");

		FUNC4(wpa_s, ssid,
					    WPA_CTRL_REQ_PSK_PASSPHRASE, NULL);

		field_name = FUNC2(
			WPA_CTRL_REQ_PSK_PASSPHRASE, NULL, &txt);
		if (field_name == NULL)
			return NULL;

		FUNC5(wpa_s, ssid, field_name, txt);

		selected = NULL;
	}

	return selected;
}
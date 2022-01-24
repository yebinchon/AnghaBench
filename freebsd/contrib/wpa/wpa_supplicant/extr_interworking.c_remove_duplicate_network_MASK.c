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
struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int /*<<< orphan*/  id; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; struct wpa_cred* parent_cred; struct wpa_ssid* next; } ;
struct wpa_cred {int dummy; } ;
struct wpa_bss {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s,
				     struct wpa_cred *cred,
				     struct wpa_bss *bss)
{
	struct wpa_ssid *ssid;

	for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
		if (ssid->parent_cred != cred)
			continue;
		if (ssid->ssid_len != bss->ssid_len ||
		    FUNC1(ssid->ssid, bss->ssid, bss->ssid_len) != 0)
			continue;

		break;
	}

	if (ssid == NULL)
		return;

	FUNC3(MSG_DEBUG, "Interworking: Remove duplicate network entry for the same credential");

	if (ssid == wpa_s->current_ssid) {
		FUNC4(wpa_s->wpa, NULL);
		FUNC0(wpa_s->eapol, NULL, NULL);
		wpa_s->own_disconnect_req = 1;
		FUNC5(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);
	}

	FUNC6(wpa_s, ssid);
	FUNC2(wpa_s->conf, ssid->id);
}
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
struct TYPE_2__ {int /*<<< orphan*/  prev_bssid; scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {TYPE_1__ sme; } ;
struct disassoc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
			struct disassoc_info *info)
{
	FUNC0(wpa_s, MSG_DEBUG, "SME: Disassociation event received");
	if (wpa_s->sme.prev_bssid_set) {
		/*
		 * cfg80211/mac80211 can get into somewhat confused state if
		 * the AP only disassociates us and leaves us in authenticated
		 * state. For now, force the state to be cleared to avoid
		 * confusing errors if we try to associate with the AP again.
		 */
		FUNC0(wpa_s, MSG_DEBUG, "SME: Deauthenticate to clear "
			"driver state");
		FUNC1(wpa_s, wpa_s->sme.prev_bssid,
				       WLAN_REASON_DEAUTH_LEAVING);
	}
}
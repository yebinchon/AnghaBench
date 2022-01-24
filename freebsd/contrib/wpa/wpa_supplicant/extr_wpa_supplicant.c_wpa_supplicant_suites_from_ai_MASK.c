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
struct wpa_supplicant {int /*<<< orphan*/  wpa; } ;
struct wpa_ssid {int group_cipher; int pairwise_cipher; int key_mgmt; } ;
struct wpa_ie_data {int group_cipher; int pairwise_cipher; int key_mgmt; int capabilities; } ;

/* Variables and functions */
 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_CAPABILITY_MFPC ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct wpa_ie_data*) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s,
					 struct wpa_ssid *ssid,
					 struct wpa_ie_data *ie)
{
	int ret = FUNC2(wpa_s->wpa, ie);
	if (ret) {
		if (ret == -2) {
			FUNC1(wpa_s, MSG_INFO, "WPA: Failed to parse WPA IE "
				"from association info");
		}
		return -1;
	}

	FUNC0(wpa_s, MSG_DEBUG, "WPA: Using WPA IE from AssocReq to set "
		"cipher suites");
	if (!(ie->group_cipher & ssid->group_cipher)) {
		FUNC1(wpa_s, MSG_INFO, "WPA: Driver used disabled group "
			"cipher 0x%x (mask 0x%x) - reject",
			ie->group_cipher, ssid->group_cipher);
		return -1;
	}
	if (!(ie->pairwise_cipher & ssid->pairwise_cipher)) {
		FUNC1(wpa_s, MSG_INFO, "WPA: Driver used disabled pairwise "
			"cipher 0x%x (mask 0x%x) - reject",
			ie->pairwise_cipher, ssid->pairwise_cipher);
		return -1;
	}
	if (!(ie->key_mgmt & ssid->key_mgmt)) {
		FUNC1(wpa_s, MSG_INFO, "WPA: Driver used disabled key "
			"management 0x%x (mask 0x%x) - reject",
			ie->key_mgmt, ssid->key_mgmt);
		return -1;
	}

#ifdef CONFIG_IEEE80211W
	if (!(ie->capabilities & WPA_CAPABILITY_MFPC) &&
	    wpas_get_ssid_pmf(wpa_s, ssid) == MGMT_FRAME_PROTECTION_REQUIRED) {
		wpa_msg(wpa_s, MSG_INFO, "WPA: Driver associated with an AP "
			"that does not support management frame protection - "
			"reject");
		return -1;
	}
#endif /* CONFIG_IEEE80211W */

	return 0;
}
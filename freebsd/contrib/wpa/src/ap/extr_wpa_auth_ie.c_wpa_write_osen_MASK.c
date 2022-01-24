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
typedef  int u8 ;
typedef  int u16 ;
struct wpa_auth_config {scalar_t__ ieee80211w; scalar_t__ ocv; scalar_t__ wmm_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS20_OSEN_OUI_TYPE ; 
 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ; 
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int /*<<< orphan*/  RSN_AUTH_KEY_MGMT_OSEN ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_CCMP ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED ; 
 int RSN_NUM_REPLAY_COUNTERS_16 ; 
 int /*<<< orphan*/  RSN_SELECTOR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int WPA_CAPABILITY_MFPC ; 
 int WPA_CAPABILITY_MFPR ; 
 int WPA_CAPABILITY_OCVC ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

__attribute__((used)) static u8 * FUNC3(struct wpa_auth_config *conf, u8 *eid)
{
	u8 *len;
	u16 capab;

	*eid++ = WLAN_EID_VENDOR_SPECIFIC;
	len = eid++; /* to be filled */
	FUNC1(eid, OUI_WFA);
	eid += 3;
	*eid++ = HS20_OSEN_OUI_TYPE;

	/* Group Data Cipher Suite */
	FUNC0(eid, RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED);
	eid += RSN_SELECTOR_LEN;

	/* Pairwise Cipher Suite Count and List */
	FUNC2(eid, 1);
	eid += 2;
	FUNC0(eid, RSN_CIPHER_SUITE_CCMP);
	eid += RSN_SELECTOR_LEN;

	/* AKM Suite Count and List */
	FUNC2(eid, 1);
	eid += 2;
	FUNC0(eid, RSN_AUTH_KEY_MGMT_OSEN);
	eid += RSN_SELECTOR_LEN;

	/* RSN Capabilities */
	capab = 0;
	if (conf->wmm_enabled) {
		/* 4 PTKSA replay counters when using WMM */
		capab |= (RSN_NUM_REPLAY_COUNTERS_16 << 2);
	}
#ifdef CONFIG_IEEE80211W
	if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION) {
		capab |= WPA_CAPABILITY_MFPC;
		if (conf->ieee80211w == MGMT_FRAME_PROTECTION_REQUIRED)
			capab |= WPA_CAPABILITY_MFPR;
	}
#endif /* CONFIG_IEEE80211W */
#ifdef CONFIG_OCV
	if (conf->ocv)
		capab |= WPA_CAPABILITY_OCVC;
#endif /* CONFIG_OCV */
	FUNC2(eid, capab);
	eid += 2;

	*len = eid - len - 1;

	return eid;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct wpa_bss {int /*<<< orphan*/  bssid; int /*<<< orphan*/  freq; } ;
struct ieee80211_vht_operation {int vht_op_info_chwidth; } ;
struct ieee80211_ht_operation {int ht_param; } ;
typedef  enum phy_type { ____Placeholder_phy_type } phy_type ;

/* Variables and functions */
 int CHANWIDTH_160MHZ ; 
 int CHANWIDTH_80MHZ ; 
 int CHANWIDTH_80P80MHZ ; 
 int HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE ; 
 int HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ NUM_HOSTAPD_MODES ; 
 int PHY_TYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  WLAN_EID_HT_OPERATION ; 
 int /*<<< orphan*/  WLAN_EID_VHT_OPERATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_bss*) ; 
 int* FUNC4 (struct wpa_bss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct wpa_supplicant *wpa_s,
			       struct wpa_bss *bss, struct wpabuf **buf,
			       u8 pref)
{
	const u8 *ie;
	u8 op_class, chan;
	int sec_chan = 0, vht = 0;
	enum phy_type phy_type;
	u32 info;
	struct ieee80211_ht_operation *ht_oper = NULL;
	struct ieee80211_vht_operation *vht_oper = NULL;

	ie = FUNC4(bss, WLAN_EID_HT_OPERATION);
	if (ie && ie[1] >= 2) {
		ht_oper = (struct ieee80211_ht_operation *) (ie + 2);

		if (ht_oper->ht_param & HT_INFO_HT_PARAM_SECONDARY_CHNL_ABOVE)
			sec_chan = 1;
		else if (ht_oper->ht_param &
			 HT_INFO_HT_PARAM_SECONDARY_CHNL_BELOW)
			sec_chan = -1;
	}

	ie = FUNC4(bss, WLAN_EID_VHT_OPERATION);
	if (ie && ie[1] >= 1) {
		vht_oper = (struct ieee80211_vht_operation *) (ie + 2);

		if (vht_oper->vht_op_info_chwidth == CHANWIDTH_80MHZ ||
		    vht_oper->vht_op_info_chwidth == CHANWIDTH_160MHZ ||
		    vht_oper->vht_op_info_chwidth == CHANWIDTH_80P80MHZ)
			vht = vht_oper->vht_op_info_chwidth;
	}

	if (FUNC0(bss->freq, sec_chan, vht, &op_class,
					  &chan) == NUM_HOSTAPD_MODES) {
		FUNC5(MSG_DEBUG,
			   "WNM: Cannot determine operating class and channel");
		return -2;
	}

	phy_type = FUNC1(bss->freq, (ht_oper != NULL),
					  (vht_oper != NULL));
	if (phy_type == PHY_TYPE_UNSPECIFIED) {
		FUNC5(MSG_DEBUG,
			   "WNM: Cannot determine BSS phy type for Neighbor Report");
		return -2;
	}

	info = FUNC3(wpa_s, bss);

	return FUNC2(buf, bss->bssid, info, op_class, chan, phy_type,
			       pref);
}
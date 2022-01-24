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
typedef  int /*<<< orphan*/  u32 ;
struct sta_info {int /*<<< orphan*/  wpa_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_radius_attr {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int wpa; int wpa_group; scalar_t__ ieee80211w; int group_mgmt_cipher; scalar_t__ osen; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int /*<<< orphan*/  RADIUS_ATTR_WLAN_AKM_SUITE ; 
 int /*<<< orphan*/  RADIUS_ATTR_WLAN_GROUP_CIPHER ; 
 int /*<<< orphan*/  RADIUS_ATTR_WLAN_GROUP_MGMT_CIPHER ; 
 int /*<<< orphan*/  RADIUS_ATTR_WLAN_PAIRWISE_CIPHER ; 
 int WPA_PROTO_RSN ; 
 int WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_radius_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct hostapd_data *hapd,
					  struct hostapd_radius_attr *req_attr,
					  struct sta_info *sta,
					  struct radius_msg *msg)
{
	u32 suite;
	int ver, val;

	ver = FUNC5(sta->wpa_sm);
	val = FUNC3(sta->wpa_sm);
	suite = FUNC6(ver, val);
	if (val != -1 &&
	    !FUNC0(req_attr,
					    RADIUS_ATTR_WLAN_PAIRWISE_CIPHER) &&
	    !FUNC1(msg, RADIUS_ATTR_WLAN_PAIRWISE_CIPHER,
				       suite)) {
		FUNC7(MSG_ERROR, "Could not add WLAN-Pairwise-Cipher");
		return -1;
	}

	suite = FUNC6(((hapd->conf->wpa & 0x2) ||
				     hapd->conf->osen) ?
				    WPA_PROTO_RSN : WPA_PROTO_WPA,
				    hapd->conf->wpa_group);
	if (!FUNC0(req_attr,
					    RADIUS_ATTR_WLAN_GROUP_CIPHER) &&
	    !FUNC1(msg, RADIUS_ATTR_WLAN_GROUP_CIPHER,
				       suite)) {
		FUNC7(MSG_ERROR, "Could not add WLAN-Group-Cipher");
		return -1;
	}

	val = FUNC4(sta->wpa_sm);
	suite = FUNC2(val);
	if (val != -1 &&
	    !FUNC0(req_attr,
					    RADIUS_ATTR_WLAN_AKM_SUITE) &&
	    !FUNC1(msg, RADIUS_ATTR_WLAN_AKM_SUITE,
				       suite)) {
		FUNC7(MSG_ERROR, "Could not add WLAN-AKM-Suite");
		return -1;
	}

#ifdef CONFIG_IEEE80211W
	if (hapd->conf->ieee80211w != NO_MGMT_FRAME_PROTECTION) {
		suite = wpa_cipher_to_suite(WPA_PROTO_RSN,
					    hapd->conf->group_mgmt_cipher);
		if (!hostapd_config_get_radius_attr(
			    req_attr, RADIUS_ATTR_WLAN_GROUP_MGMT_CIPHER) &&
		    !radius_msg_add_attr_int32(
			    msg, RADIUS_ATTR_WLAN_GROUP_MGMT_CIPHER, suite)) {
			wpa_printf(MSG_ERROR,
				   "Could not add WLAN-Group-Mgmt-Cipher");
			return -1;
		}
	}
#endif /* CONFIG_IEEE80211W */

	return 0;
}
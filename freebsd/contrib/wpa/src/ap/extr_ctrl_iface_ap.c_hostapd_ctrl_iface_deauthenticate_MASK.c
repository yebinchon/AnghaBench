#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  void* u16 ;
struct sta_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_5__ {TYPE_1__ deauth; } ;
struct ieee80211_mgmt {TYPE_2__ u; int /*<<< orphan*/  bssid; int /*<<< orphan*/  sa; int /*<<< orphan*/  da; int /*<<< orphan*/  frame_control; } ;
struct hostapd_data {int* own_addr; int /*<<< orphan*/  drv_priv; TYPE_3__* driver; int /*<<< orphan*/  msg_ctx; } ;
typedef  int /*<<< orphan*/  mgmt ;
struct TYPE_6__ {scalar_t__ (* send_frame ) (int /*<<< orphan*/ ,int*,scalar_t__,int) ;} ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_HDRLEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_FC_STYPE_DEAUTH ; 
 int /*<<< orphan*/  WLAN_FC_TYPE_MGMT ; 
 void* WLAN_REASON_PREV_AUTH_NOT_VALID ; 
 struct sta_info* FUNC1 (struct hostapd_data*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,struct sta_info*,void*) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*,int*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_data*) ; 
 scalar_t__ FUNC8 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_mgmt*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (char const*,char*) ; 
 int FUNC12 (struct hostapd_data*,int /*<<< orphan*/ ,void*,int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC15(struct hostapd_data *hapd,
				      const char *txtaddr)
{
	u8 addr[ETH_ALEN];
	struct sta_info *sta;
	const char *pos;
	u16 reason = WLAN_REASON_PREV_AUTH_NOT_VALID;

	FUNC14(hapd->msg_ctx, MSG_DEBUG, "CTRL_IFACE DEAUTHENTICATE %s",
		txtaddr);

	if (FUNC8(txtaddr, addr))
		return -1;

	pos = FUNC11(txtaddr, " reason=");
	if (pos)
		reason = FUNC3(pos + 8);

	pos = FUNC11(txtaddr, " test=");
	if (pos) {
		struct ieee80211_mgmt mgmt;
		int encrypt;
		if (!hapd->drv_priv || !hapd->driver->send_frame)
			return -1;
		pos += 6;
		encrypt = FUNC3(pos);
		FUNC10(&mgmt, 0, sizeof(mgmt));
		mgmt.frame_control = FUNC0(WLAN_FC_TYPE_MGMT,
						  WLAN_FC_STYPE_DEAUTH);
		FUNC9(mgmt.da, addr, ETH_ALEN);
		FUNC9(mgmt.sa, hapd->own_addr, ETH_ALEN);
		FUNC9(mgmt.bssid, hapd->own_addr, ETH_ALEN);
		mgmt.u.deauth.reason_code = FUNC4(reason);
		if (hapd->driver->send_frame(hapd->drv_priv, (u8 *) &mgmt,
					     IEEE80211_HDRLEN +
					     sizeof(mgmt.u.deauth),
					     encrypt) < 0)
			return -1;
		return 0;
	}

#ifdef CONFIG_P2P_MANAGER
	pos = os_strstr(txtaddr, " p2p=");
	if (pos) {
		return p2p_manager_disconnect(hapd, WLAN_FC_STYPE_DEAUTH,
					      atoi(pos + 5), addr);
	}
#endif /* CONFIG_P2P_MANAGER */

	if (FUNC11(txtaddr, " tx=0"))
		FUNC6(hapd, addr);
	else
		FUNC5(hapd, addr, reason);
	sta = FUNC1(hapd, addr);
	if (sta)
		FUNC2(hapd, sta, reason);
	else if (addr[0] == 0xff)
		FUNC7(hapd);

	return 0;
}
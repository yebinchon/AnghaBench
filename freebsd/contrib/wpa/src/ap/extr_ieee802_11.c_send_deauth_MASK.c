#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  reason_code; } ;
struct TYPE_4__ {TYPE_1__ deauth; } ;
struct ieee80211_mgmt {TYPE_2__ u; int /*<<< orphan*/  bssid; int /*<<< orphan*/  sa; int /*<<< orphan*/  da; int /*<<< orphan*/  frame_control; } ;
struct hostapd_data {int /*<<< orphan*/  const* own_addr; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_HDRLEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_FC_STYPE_DEAUTH ; 
 int /*<<< orphan*/  WLAN_FC_TYPE_MGMT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,struct ieee80211_mgmt*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_mgmt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hostapd_data *hapd, const u8 *addr,
			u16 reason_code)
{
	int send_len;
	struct ieee80211_mgmt reply;

	FUNC4(&reply, 0, sizeof(reply));
	reply.frame_control =
		FUNC0(WLAN_FC_TYPE_MGMT, WLAN_FC_STYPE_DEAUTH);
	FUNC3(reply.da, addr, ETH_ALEN);
	FUNC3(reply.sa, hapd->own_addr, ETH_ALEN);
	FUNC3(reply.bssid, hapd->own_addr, ETH_ALEN);

	send_len = IEEE80211_HDRLEN + sizeof(reply.u.deauth);
	reply.u.deauth.reason_code = FUNC1(reason_code);

	if (FUNC2(hapd, &reply, send_len, 0) < 0)
		FUNC6(MSG_INFO, "Failed to send deauth: %s",
			   FUNC5(errno));
}
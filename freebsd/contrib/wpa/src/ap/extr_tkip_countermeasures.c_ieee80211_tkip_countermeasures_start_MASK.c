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
struct sta_info {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  acct_terminate_cause; } ;
struct hostapd_data {int tkip_countermeasures; struct sta_info* sta_list; int /*<<< orphan*/  wpa_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE80211 ; 
 int /*<<< orphan*/  RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET ; 
 int /*<<< orphan*/  WLAN_REASON_MICHAEL_MIC_FAILURE ; 
 int WLAN_STA_AUTH ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ieee80211_tkip_countermeasures_stop ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct hostapd_data *hapd)
{
	struct sta_info *sta;

	FUNC5(hapd, NULL, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_INFO, "TKIP countermeasures initiated");

	FUNC7(hapd->wpa_auth);
	hapd->tkip_countermeasures = 1;
	FUNC3(hapd, 1);
	FUNC8(hapd->wpa_auth);
	FUNC1(ieee80211_tkip_countermeasures_stop, hapd, NULL);
	FUNC2(60, 0, ieee80211_tkip_countermeasures_stop,
			       hapd, NULL);
	while ((sta = hapd->sta_list)) {
		sta->acct_terminate_cause =
			RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET;
		if (sta->flags & WLAN_STA_AUTH) {
			FUNC6(
				hapd, sta,
				WLAN_REASON_MICHAEL_MIC_FAILURE);
		}
		FUNC4(hapd, sta->addr,
				       WLAN_REASON_MICHAEL_MIC_FAILURE);
		FUNC0(hapd, sta);
	}
}
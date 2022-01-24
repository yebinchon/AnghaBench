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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {size_t he_capab_len; int /*<<< orphan*/ * he_capab; int /*<<< orphan*/  flags; } ;
struct ieee80211_he_capabilities {int dummy; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
typedef  enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;
struct TYPE_2__ {int /*<<< orphan*/  ieee80211ax; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  WLAN_STA_HE ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

u16 FUNC5(struct hostapd_data *hapd, struct sta_info *sta,
		      enum ieee80211_op_mode opmode, const u8 *he_capab,
		      size_t he_capab_len)
{
	if (!he_capab || !hapd->iconf->ieee80211ax ||
	    !FUNC0(hapd, he_capab, opmode) ||
	    he_capab_len > sizeof(struct ieee80211_he_capabilities)) {
		sta->flags &= ~WLAN_STA_HE;
		FUNC1(sta->he_capab);
		sta->he_capab = NULL;
		return WLAN_STATUS_SUCCESS;
	}

	if (!sta->he_capab) {
		sta->he_capab =
			FUNC4(sizeof(struct ieee80211_he_capabilities));
		if (!sta->he_capab)
			return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	sta->flags |= WLAN_STA_HE;
	FUNC3(sta->he_capab, 0, sizeof(struct ieee80211_he_capabilities));
	FUNC2(sta->he_capab, he_capab, he_capab_len);
	sta->he_capab_len = he_capab_len;

	return WLAN_STATUS_SUCCESS;
}
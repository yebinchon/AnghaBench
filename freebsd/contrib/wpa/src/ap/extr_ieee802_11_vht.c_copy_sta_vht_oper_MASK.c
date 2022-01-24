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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {int /*<<< orphan*/ * vht_operation; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

u16 FUNC3(struct hostapd_data *hapd, struct sta_info *sta,
		      const u8 *vht_oper)
{
	if (!vht_oper) {
		FUNC0(sta->vht_operation);
		sta->vht_operation = NULL;
		return WLAN_STATUS_SUCCESS;
	}

	if (!sta->vht_operation) {
		sta->vht_operation =
			FUNC2(sizeof(struct ieee80211_vht_operation));
		if (!sta->vht_operation)
			return WLAN_STATUS_UNSPECIFIED_FAILURE;
	}

	FUNC1(sta->vht_operation, vht_oper,
		  sizeof(struct ieee80211_vht_operation));

	return WLAN_STATUS_SUCCESS;
}
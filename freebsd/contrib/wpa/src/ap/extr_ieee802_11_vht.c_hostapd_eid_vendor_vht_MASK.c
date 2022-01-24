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
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_vht_capabilities {int dummy; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_mode; } ;

/* Variables and functions */
 int OUI_BROADCOM ; 
 int /*<<< orphan*/  VENDOR_VHT_SUBTYPE ; 
 int VENDOR_VHT_TYPE ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct hostapd_data*,int /*<<< orphan*/ *) ; 

u8 * FUNC3(struct hostapd_data *hapd, u8 *eid)
{
	u8 *pos = eid;

	if (!hapd->iface->current_mode)
		return eid;

	*pos++ = WLAN_EID_VENDOR_SPECIFIC;
	*pos++ = (5 +		/* The Vendor OUI, type and subtype */
		  2 + sizeof(struct ieee80211_vht_capabilities) +
		  2 + sizeof(struct ieee80211_vht_operation));

	FUNC0(pos, (OUI_BROADCOM << 8) | VENDOR_VHT_TYPE);
	pos += 4;
	*pos++ = VENDOR_VHT_SUBTYPE;
	pos = FUNC1(hapd, pos, 0);
	pos = FUNC2(hapd, pos);

	return pos;
}
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
struct ieee80211_hdr {int /*<<< orphan*/  IEEE80211_SA_FROMDS; int /*<<< orphan*/  IEEE80211_BSSID_FROMDS; int /*<<< orphan*/  IEEE80211_DA_FROMDS; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_FC_FROMDS ; 
 int /*<<< orphan*/  WLAN_FC_STYPE_DATA ; 
 int /*<<< orphan*/  WLAN_FC_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hdr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void *priv, const u8 *own_addr,
					  const u8 *addr, int qos)
{
	struct ieee80211_hdr hdr;

	FUNC4(&hdr, 0, sizeof(hdr));

	/*
	 * WLAN_FC_STYPE_NULLFUNC would be more appropriate,
	 * but it is apparently not retried so TX Exc events
	 * are not received for it.
	 * This is the reason the driver overrides the default
	 * handling.
	 */
	hdr.frame_control = FUNC0(WLAN_FC_TYPE_DATA,
					 WLAN_FC_STYPE_DATA);

	hdr.frame_control |=
		FUNC1(WLAN_FC_FROMDS);
	FUNC3(hdr.IEEE80211_DA_FROMDS, addr, ETH_ALEN);
	FUNC3(hdr.IEEE80211_BSSID_FROMDS, own_addr, ETH_ALEN);
	FUNC3(hdr.IEEE80211_SA_FROMDS, own_addr, ETH_ALEN);

	FUNC2(priv, (u8 *)&hdr, sizeof(hdr), 0, 0, NULL, 0);
}
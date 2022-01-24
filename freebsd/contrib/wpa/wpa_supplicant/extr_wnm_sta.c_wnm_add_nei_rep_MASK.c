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

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IEEE80211_HDRLEN ; 
 scalar_t__ IEEE80211_MAX_MMPDU_SIZE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_EID_NEIGHBOR_REPORT ; 
 int WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 
 scalar_t__ FUNC5 (struct wpabuf**,int) ; 

__attribute__((used)) static int FUNC6(struct wpabuf **buf, const u8 *bssid,
			   u32 bss_info, u8 op_class, u8 chan, u8 phy_type,
			   u8 pref)
{
	if (FUNC1(*buf) + 18 >
	    IEEE80211_MAX_MMPDU_SIZE - IEEE80211_HDRLEN) {
		FUNC0(MSG_DEBUG,
			   "WNM: No room in frame for Neighbor Report element");
		return -1;
	}

	if (FUNC5(buf, 18) < 0) {
		FUNC0(MSG_DEBUG,
			   "WNM: Failed to allocate memory for Neighbor Report element");
		return -1;
	}

	FUNC4(*buf, WLAN_EID_NEIGHBOR_REPORT);
	/* length: 13 for basic neighbor report + 3 for preference subelement */
	FUNC4(*buf, 16);
	FUNC2(*buf, bssid, ETH_ALEN);
	FUNC3(*buf, bss_info);
	FUNC4(*buf, op_class);
	FUNC4(*buf, chan);
	FUNC4(*buf, phy_type);
	FUNC4(*buf, WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE);
	FUNC4(*buf, 1);
	FUNC4(*buf, pref);
	return 0;
}
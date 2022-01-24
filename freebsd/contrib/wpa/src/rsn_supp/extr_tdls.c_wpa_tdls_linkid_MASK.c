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
struct wpa_tdls_peer {int /*<<< orphan*/  addr; scalar_t__ initiator; } ;
struct wpa_tdls_lnkid {int ie_len; int /*<<< orphan*/  resp_sta; int /*<<< orphan*/  init_sta; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ie_type; } ;
struct wpa_sm {int /*<<< orphan*/  own_addr; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  WLAN_EID_LINK_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct wpa_sm *sm, struct wpa_tdls_peer *peer,
			    struct wpa_tdls_lnkid *lnkid)
{
	lnkid->ie_type = WLAN_EID_LINK_ID;
	lnkid->ie_len = 3 * ETH_ALEN;
	FUNC0(lnkid->bssid, sm->bssid, ETH_ALEN);
	if (peer->initiator) {
		FUNC0(lnkid->init_sta, sm->own_addr, ETH_ALEN);
		FUNC0(lnkid->resp_sta, peer->addr, ETH_ALEN);
	} else {
		FUNC0(lnkid->init_sta, peer->addr, ETH_ALEN);
		FUNC0(lnkid->resp_sta, sm->own_addr, ETH_ALEN);
	}
}
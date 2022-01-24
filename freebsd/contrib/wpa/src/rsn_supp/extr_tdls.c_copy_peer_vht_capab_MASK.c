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
struct wpa_tdls_peer {int /*<<< orphan*/ * vht_capabilities; } ;
struct wpa_eapol_ie_parse {int /*<<< orphan*/  vht_capabilities; } ;
struct ieee80211_vht_capabilities {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(const struct wpa_eapol_ie_parse *kde,
			      struct wpa_tdls_peer *peer)
{
	if (!kde->vht_capabilities) {
		FUNC3(MSG_DEBUG, "TDLS: No supported vht capabilities "
			   "received");
		return 0;
	}

	if (!peer->vht_capabilities) {
		peer->vht_capabilities =
                        FUNC1(sizeof(struct ieee80211_vht_capabilities));
		if (peer->vht_capabilities == NULL)
                        return -1;
	}

	FUNC0(peer->vht_capabilities, kde->vht_capabilities,
                  sizeof(struct ieee80211_vht_capabilities));
	FUNC2(MSG_DEBUG, "TDLS: Peer VHT capabilities",
		    (u8 *) peer->vht_capabilities,
		    sizeof(struct ieee80211_vht_capabilities));

	return 0;
}
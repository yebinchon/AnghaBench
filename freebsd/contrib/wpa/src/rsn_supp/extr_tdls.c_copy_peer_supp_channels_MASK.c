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
struct wpa_tdls_peer {scalar_t__ supp_channels_len; int /*<<< orphan*/ * supp_channels; } ;
struct wpa_eapol_ie_parse {scalar_t__ supp_channels_len; int /*<<< orphan*/  supp_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(const struct wpa_eapol_ie_parse *kde,
				   struct wpa_tdls_peer *peer)
{
	if (!kde->supp_channels) {
		FUNC4(MSG_DEBUG, "TDLS: No supported channels received");
		return 0;
	}

	if (!peer->supp_channels ||
	    peer->supp_channels_len < kde->supp_channels_len) {
		FUNC0(peer->supp_channels);
		peer->supp_channels = FUNC2(kde->supp_channels_len);
		if (peer->supp_channels == NULL)
			return -1;
	}

	peer->supp_channels_len = kde->supp_channels_len;

	FUNC1(peer->supp_channels, kde->supp_channels,
		  peer->supp_channels_len);
	FUNC3(MSG_DEBUG, "TDLS: Peer Supported Channels",
		    (u8 *) peer->supp_channels, peer->supp_channels_len);
	return 0;
}
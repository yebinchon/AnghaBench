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
struct wpa_supplicant {int drv_flags; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  wpa; int /*<<< orphan*/ * l2; int /*<<< orphan*/  ifname; int /*<<< orphan*/  p2p_mgmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  L2_PACKET_FILTER_PKTTYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ; 
 int WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa_supplicant_rx_eapol ; 

int FUNC9(struct wpa_supplicant *wpa_s)
{
	if ((!wpa_s->p2p_mgmt ||
	     !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE)) &&
	    !(wpa_s->drv_flags & WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE)) {
		FUNC0(wpa_s->l2);
		wpa_s->l2 = FUNC2(wpa_s->ifname,
					   FUNC6(wpa_s),
					   ETH_P_EAPOL,
					   wpa_supplicant_rx_eapol, wpa_s, 0);
		if (wpa_s->l2 == NULL)
			return -1;

		if (FUNC3(wpa_s->l2,
						L2_PACKET_FILTER_PKTTYPE))
			FUNC5(wpa_s, MSG_DEBUG,
				"Failed to attach pkt_type filter");
	} else {
		const u8 *addr = FUNC6(wpa_s);
		if (addr)
			FUNC4(wpa_s->own_addr, addr, ETH_ALEN);
	}

	if (wpa_s->l2 && FUNC1(wpa_s->l2, wpa_s->own_addr)) {
		FUNC7(wpa_s, MSG_ERROR, "Failed to get own L2 address");
		return -1;
	}

	FUNC8(wpa_s->wpa, wpa_s->own_addr);

	return 0;
}
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
struct wpa_supplicant {int p2p_go_group_formation_completed; TYPE_1__* global; int /*<<< orphan*/  p2pdev; int /*<<< orphan*/  bssid; int /*<<< orphan*/  p2p_in_provisioning; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ mode; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_MAX_INITIAL_CONN_WAIT ; 
 int /*<<< orphan*/  P2P_MAX_INITIAL_CONN_WAIT_GO ; 
 scalar_t__ WPAS_MODE_INFRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct wpa_supplicant *wpa_s, const u8 *peer_addr,
			  int registrar)
{
	struct wpa_ssid *ssid = wpa_s->current_ssid;

	if (!wpa_s->p2p_in_provisioning) {
		FUNC6(MSG_DEBUG, "P2P: Ignore WPS success event - P2P "
			   "provisioning not in progress");
		return;
	}

	if (ssid && ssid->mode == WPAS_MODE_INFRA) {
		u8 go_dev_addr[ETH_ALEN];
		FUNC2(go_dev_addr, wpa_s->bssid, ETH_ALEN);
		FUNC8(wpa_s, go_dev_addr, ssid->ssid,
					  ssid->ssid_len);
		/* Clear any stored provisioning info */
		FUNC3(wpa_s->global->p2p, go_dev_addr);
	}

	FUNC0(wpas_p2p_group_formation_timeout, wpa_s->p2pdev,
			     NULL);
	wpa_s->p2p_go_group_formation_completed = 1;
	if (ssid && ssid->mode == WPAS_MODE_INFRA) {
		/*
		 * Use a separate timeout for initial data connection to
		 * complete to allow the group to be removed automatically if
		 * something goes wrong in this step before the P2P group idle
		 * timeout mechanism is taken into use.
		 */
		FUNC5(wpa_s, MSG_DEBUG,
			"P2P: Re-start group formation timeout (%d seconds) as client for initial connection",
			P2P_MAX_INITIAL_CONN_WAIT);
		FUNC1(P2P_MAX_INITIAL_CONN_WAIT, 0,
				       wpas_p2p_group_formation_timeout,
				       wpa_s->p2pdev, NULL);
		/* Complete group formation on successful data connection. */
		wpa_s->p2p_go_group_formation_completed = 0;
	} else if (ssid) {
		/*
		 * Use a separate timeout for initial data connection to
		 * complete to allow the group to be removed automatically if
		 * the client does not complete data connection successfully.
		 */
		FUNC5(wpa_s, MSG_DEBUG,
			"P2P: Re-start group formation timeout (%d seconds) as GO for initial connection",
			P2P_MAX_INITIAL_CONN_WAIT_GO);
		FUNC1(P2P_MAX_INITIAL_CONN_WAIT_GO, 0,
				       wpas_p2p_group_formation_timeout,
				       wpa_s->p2pdev, NULL);
		/*
		 * Complete group formation on first successful data connection
		 */
		wpa_s->p2p_go_group_formation_completed = 0;
	}
	if (wpa_s->global->p2p)
		FUNC4(wpa_s->global->p2p, peer_addr);
	FUNC7(wpa_s, 1, 0);
}
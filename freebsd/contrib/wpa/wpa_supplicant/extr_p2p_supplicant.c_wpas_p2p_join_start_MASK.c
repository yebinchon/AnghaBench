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
struct wpa_supplicant {int p2p_in_provisioning; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; int /*<<< orphan*/  const* pending_join_iface_addr; int /*<<< orphan*/  pending_join_wps_method; int /*<<< orphan*/  const* pending_join_dev_addr; int /*<<< orphan*/  p2p_fallback_to_go_neg; TYPE_1__* global; struct wpa_supplicant* parent; int /*<<< orphan*/  p2p_wps_method; int /*<<< orphan*/  const* p2p_pin; } ;
struct wpa_bss {int freq; size_t ssid_len; int /*<<< orphan*/  const* ssid; } ;
struct p2p_go_neg_results {int freq; size_t ssid_len; int /*<<< orphan*/  const* ssid; int /*<<< orphan*/  wps_method; int /*<<< orphan*/  const* peer_interface_addr; int /*<<< orphan*/  const* peer_device_addr; } ;
typedef  int /*<<< orphan*/  res ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_go_neg_results*,int /*<<< orphan*/ ,int) ; 
 struct wpa_bss* FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 struct wpa_bss* FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,size_t) ; 
 struct wpa_supplicant* FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,struct p2p_go_neg_results*) ; 

__attribute__((used)) static int FUNC11(struct wpa_supplicant *wpa_s, int freq,
			       const u8 *ssid, size_t ssid_len)
{
	struct wpa_supplicant *group;
	struct p2p_go_neg_results res;
	struct wpa_bss *bss;

	group = FUNC9(wpa_s, 0, 0);
	if (group == NULL)
		return -1;
	if (group != wpa_s) {
		FUNC2(group->p2p_pin, wpa_s->p2p_pin,
			  sizeof(group->p2p_pin));
		group->p2p_wps_method = wpa_s->p2p_wps_method;
	}

	/*
	 * Need to mark the current interface for p2p_group_formation
	 * when a separate group interface is not used. This is needed
	 * to allow p2p_cancel stop a pending p2p_connect-join.
	 * wpas_p2p_init_group_interface() addresses this for the case
	 * where a separate group interface is used.
	 */
	if (group == wpa_s->parent)
		wpa_s->global->p2p_group_formation = group;

	group->p2p_in_provisioning = 1;
	group->p2p_fallback_to_go_neg = wpa_s->p2p_fallback_to_go_neg;

	FUNC3(&res, 0, sizeof(res));
	FUNC2(res.peer_device_addr, wpa_s->pending_join_dev_addr, ETH_ALEN);
	FUNC2(res.peer_interface_addr, wpa_s->pending_join_iface_addr,
		  ETH_ALEN);
	res.wps_method = wpa_s->pending_join_wps_method;
	if (freq && ssid && ssid_len) {
		res.freq = freq;
		res.ssid_len = ssid_len;
		FUNC2(res.ssid, ssid, ssid_len);
	} else {
		if (ssid && ssid_len) {
			bss = FUNC4(wpa_s, wpa_s->pending_join_iface_addr,
					  ssid, ssid_len);
		} else {
			bss = FUNC5(
				wpa_s, wpa_s->pending_join_iface_addr);
		}
		if (bss) {
			res.freq = bss->freq;
			res.ssid_len = bss->ssid_len;
			FUNC2(res.ssid, bss->ssid, bss->ssid_len);
			FUNC7(MSG_DEBUG, "P2P: Join target GO operating frequency from BSS table: %d MHz (SSID %s)",
				   bss->freq,
				   FUNC8(bss->ssid, bss->ssid_len));
		} else if (ssid && ssid_len) {
			res.ssid_len = ssid_len;
			FUNC2(res.ssid, ssid, ssid_len);
			FUNC7(MSG_DEBUG, "P2P: Join target GO (SSID %s)",
				   FUNC8(ssid, ssid_len));
		}
	}

	if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
		FUNC7(MSG_DEBUG, "P2P: Cancel remain-on-channel prior to "
			   "starting client");
		FUNC6(wpa_s);
		wpa_s->off_channel_freq = 0;
		wpa_s->roc_waiting_drv_freq = 0;
	}
	FUNC10(group, &res);

	/*
	 * Allow a longer timeout for join-a-running-group than normal 15
	 * second group formation timeout since the GO may not have authorized
	 * our connection yet.
	 */
	FUNC0(wpas_p2p_group_formation_timeout, wpa_s, NULL);
	FUNC1(60, 0, wpas_p2p_group_formation_timeout,
			       wpa_s, NULL);

	return 0;
}
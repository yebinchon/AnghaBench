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
struct wpa_supplicant {int show_group_started; int p2p_in_invitation; int p2p_invite_go_freq; int /*<<< orphan*/  p2pdev; TYPE_1__* global; scalar_t__ p2p_go_group_formation_completed; int /*<<< orphan*/  conf; int /*<<< orphan*/  go_dev_addr; int /*<<< orphan*/ * p2p_last_4way_hs_fail; int /*<<< orphan*/  scan_min_time; } ;
struct wpa_ssid {int temporary; int ssid_len; int p2p_group; int export_keys; int psk_set; scalar_t__ passphrase; int /*<<< orphan*/ * psk; int /*<<< orphan*/ * ssid; int /*<<< orphan*/  id; int /*<<< orphan*/  key_mgmt; scalar_t__ pbss; void* group_cipher; void* pairwise_cipher; int /*<<< orphan*/  proto; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  P2P_MAX_INITIAL_CONN_WAIT ; 
 void* WPA_CIPHER_CCMP ; 
 void* WPA_CIPHER_GCMP ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_PSK ; 
 int /*<<< orphan*/  WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct wpa_ssid* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 struct wpa_supplicant* FUNC12 (struct wpa_supplicant*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 

__attribute__((used)) static int FUNC13(struct wpa_supplicant *wpa_s,
				 struct wpa_ssid *params, int addr_allocated,
				 int freq, int force_scan)
{
	struct wpa_ssid *ssid;

	wpa_s = FUNC12(wpa_s, addr_allocated, 0);
	if (wpa_s == NULL)
		return -1;
	if (force_scan)
		FUNC2(&wpa_s->scan_min_time);
	wpa_s->p2p_last_4way_hs_fail = NULL;

	FUNC10(wpa_s);

	ssid = FUNC7(wpa_s->conf);
	if (ssid == NULL)
		return -1;
	FUNC5(wpa_s->go_dev_addr, 0, ETH_ALEN);
	FUNC9(ssid);
	ssid->temporary = 1;
	ssid->proto = WPA_PROTO_RSN;
	ssid->pbss = params->pbss;
	ssid->pairwise_cipher = params->pbss ? WPA_CIPHER_GCMP :
		WPA_CIPHER_CCMP;
	ssid->group_cipher = params->pbss ? WPA_CIPHER_GCMP : WPA_CIPHER_CCMP;
	ssid->key_mgmt = WPA_KEY_MGMT_PSK;
	ssid->ssid = FUNC3(params->ssid_len);
	if (ssid->ssid == NULL) {
		FUNC8(wpa_s->conf, ssid->id);
		return -1;
	}
	FUNC4(ssid->ssid, params->ssid, params->ssid_len);
	ssid->ssid_len = params->ssid_len;
	ssid->p2p_group = 1;
	ssid->export_keys = 1;
	if (params->psk_set) {
		FUNC4(ssid->psk, params->psk, 32);
		ssid->psk_set = 1;
	}
	if (params->passphrase)
		ssid->passphrase = FUNC6(params->passphrase);

	wpa_s->show_group_started = 1;
	wpa_s->p2p_in_invitation = 1;
	wpa_s->p2p_invite_go_freq = freq;
	wpa_s->p2p_go_group_formation_completed = 0;
	wpa_s->global->p2p_group_formation = wpa_s;

	FUNC0(wpas_p2p_group_formation_timeout, wpa_s->p2pdev,
			     NULL);
	FUNC1(P2P_MAX_INITIAL_CONN_WAIT, 0,
			       wpas_p2p_group_formation_timeout,
			       wpa_s->p2pdev, NULL);
	FUNC11(wpa_s, ssid);

	return 0;
}
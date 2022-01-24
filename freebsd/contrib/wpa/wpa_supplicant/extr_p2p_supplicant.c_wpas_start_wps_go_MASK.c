#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int reassociate; scalar_t__ disconnected; struct wpa_ssid* connect_without_scan; int /*<<< orphan*/  scan_req; int /*<<< orphan*/  go_params; int /*<<< orphan*/  ap_configured_cb_data; struct wpa_supplicant* ap_configured_cb_ctx; int /*<<< orphan*/  ap_configured_cb; TYPE_2__* p2pdev; int /*<<< orphan*/  conf; int /*<<< orphan*/  go_dev_addr; scalar_t__ group_formation_reported; scalar_t__ p2p_go_group_formation_completed; scalar_t__ show_group_started; } ;
struct wpa_ssid {int temporary; int p2p_group; int p2p_persistent_group; int frequency; int ssid_len; int pbss; int /*<<< orphan*/  ap_max_inactivity; int /*<<< orphan*/ * passphrase; scalar_t__ psk; scalar_t__ psk_set; int /*<<< orphan*/  id; void* group_cipher; void* pairwise_cipher; int /*<<< orphan*/  proto; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  auth_alg; scalar_t__ ssid; int /*<<< orphan*/  he; int /*<<< orphan*/  vht_center_freq2; int /*<<< orphan*/  max_oper_chwidth; int /*<<< orphan*/  vht; int /*<<< orphan*/  ht40; int /*<<< orphan*/  mode; } ;
struct p2p_go_neg_results {int freq; int ssid_len; int /*<<< orphan*/  psk; scalar_t__ psk_set; int /*<<< orphan*/  passphrase; int /*<<< orphan*/  ssid; int /*<<< orphan*/  he; int /*<<< orphan*/  vht_center_freq2; int /*<<< orphan*/  max_oper_chwidth; int /*<<< orphan*/  vht; int /*<<< orphan*/  ht40; int /*<<< orphan*/  persistent_group; } ;
struct TYPE_4__ {TYPE_1__* conf; } ;
struct TYPE_3__ {int /*<<< orphan*/  p2p_go_max_inactivity; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  NORMAL_SCAN_REQ ; 
 int /*<<< orphan*/  WPAS_MODE_P2P_GO ; 
 int /*<<< orphan*/  WPAS_MODE_P2P_GROUP_FORMATION ; 
 int /*<<< orphan*/  WPA_AUTH_ALG_OPEN ; 
 void* WPA_CIPHER_CCMP ; 
 void* WPA_CIPHER_GCMP ; 
 int /*<<< orphan*/  WPA_KEY_MGMT_PSK ; 
 int /*<<< orphan*/  WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p2p_go_configured ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wpa_supplicant*,struct p2p_go_neg_results*) ; 

__attribute__((used)) static void FUNC13(struct wpa_supplicant *wpa_s,
			      struct p2p_go_neg_results *params,
			      int group_formation)
{
	struct wpa_ssid *ssid;

	FUNC9(wpa_s, MSG_DEBUG, "P2P: Starting GO");
	if (FUNC12(wpa_s, params) < 0) {
		FUNC9(wpa_s, MSG_DEBUG, "P2P: Could not copy GO Negotiation "
			"results");
		return;
	}

	ssid = FUNC5(wpa_s->conf);
	if (ssid == NULL) {
		FUNC9(wpa_s, MSG_DEBUG, "P2P: Could not add network for GO");
		return;
	}

	wpa_s->show_group_started = 0;
	wpa_s->p2p_go_group_formation_completed = 0;
	wpa_s->group_formation_reported = 0;
	FUNC1(wpa_s->go_dev_addr, 0, ETH_ALEN);

	FUNC7(ssid);
	ssid->temporary = 1;
	ssid->p2p_group = 1;
	ssid->p2p_persistent_group = !!params->persistent_group;
	ssid->mode = group_formation ? WPAS_MODE_P2P_GROUP_FORMATION :
		WPAS_MODE_P2P_GO;
	ssid->frequency = params->freq;
	ssid->ht40 = params->ht40;
	ssid->vht = params->vht;
	ssid->max_oper_chwidth = params->max_oper_chwidth;
	ssid->vht_center_freq2 = params->vht_center_freq2;
	ssid->he = params->he;
	ssid->ssid = FUNC4(params->ssid_len + 1);
	if (ssid->ssid) {
		FUNC0(ssid->ssid, params->ssid, params->ssid_len);
		ssid->ssid_len = params->ssid_len;
	}
	ssid->auth_alg = WPA_AUTH_ALG_OPEN;
	ssid->key_mgmt = WPA_KEY_MGMT_PSK;
	ssid->proto = WPA_PROTO_RSN;
	ssid->pairwise_cipher = WPA_CIPHER_CCMP;
	ssid->group_cipher = WPA_CIPHER_CCMP;
	if (params->freq > 56160) {
		/*
		 * Enable GCMP instead of CCMP as pairwise_cipher and
		 * group_cipher in 60 GHz.
		 */
		ssid->pairwise_cipher = WPA_CIPHER_GCMP;
		ssid->group_cipher = WPA_CIPHER_GCMP;
		/* P2P GO in 60 GHz is always a PCP (PBSS) */
		ssid->pbss = 1;
	}
	if (FUNC3(params->passphrase) > 0) {
		ssid->passphrase = FUNC2(params->passphrase);
		if (ssid->passphrase == NULL) {
			FUNC10(wpa_s, MSG_ERROR,
				       "P2P: Failed to copy passphrase for GO");
			FUNC6(wpa_s->conf, ssid->id);
			return;
		}
	} else
		ssid->passphrase = NULL;
	ssid->psk_set = params->psk_set;
	if (ssid->psk_set)
		FUNC0(ssid->psk, params->psk, sizeof(ssid->psk));
	else if (ssid->passphrase)
		FUNC8(ssid);
	ssid->ap_max_inactivity = wpa_s->p2pdev->conf->p2p_go_max_inactivity;

	wpa_s->ap_configured_cb = p2p_go_configured;
	wpa_s->ap_configured_cb_ctx = wpa_s;
	wpa_s->ap_configured_cb_data = wpa_s->go_params;
	wpa_s->scan_req = NORMAL_SCAN_REQ;
	wpa_s->connect_without_scan = ssid;
	wpa_s->reassociate = 1;
	wpa_s->disconnected = 0;
	FUNC9(wpa_s, MSG_DEBUG, "P2P: Request scan (that will be skipped) to "
		"start GO)");
	FUNC11(wpa_s, 0, 0);
}
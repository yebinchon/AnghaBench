#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int drv_flags; TYPE_2__* ap_iface; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int frequency; } ;
struct p2p_go_neg_results {int freq; } ;
struct hostapd_config {scalar_t__ hw_mode; int vht_oper_chwidth; scalar_t__ ieee80211ac; int /*<<< orphan*/  vht_oper_centr_freq_seg1_idx; int /*<<< orphan*/  vht_oper_centr_freq_seg0_idx; scalar_t__ secondary_channel; int /*<<< orphan*/  ieee80211n; } ;
struct TYPE_6__ {int freq; int bandwidth; int center_freq1; int center_freq2; scalar_t__ vht_enabled; int /*<<< orphan*/  ht_enabled; scalar_t__ sec_channel_offset; } ;
struct csa_settings {TYPE_3__ freq_params; int /*<<< orphan*/  block_tx; int /*<<< orphan*/  cs_count; } ;
typedef  int /*<<< orphan*/  csa_settings ;
struct TYPE_5__ {TYPE_1__* current_mode; } ;
struct TYPE_4__ {scalar_t__ mode; } ;

/* Variables and functions */
#define  CHANWIDTH_160MHZ 130 
#define  CHANWIDTH_80MHZ 129 
#define  CHANWIDTH_80P80MHZ 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ NUM_HOSTAPD_MODES ; 
 int /*<<< orphan*/  P2P_GO_CSA_BLOCK_TX ; 
 int /*<<< orphan*/  P2P_GO_CSA_COUNT ; 
 int WPA_DRIVER_FLAGS_AP_CSA ; 
 int FUNC0 (struct wpa_supplicant*,struct csa_settings*) ; 
 struct hostapd_config* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_config*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct csa_settings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*) ; 
 scalar_t__ FUNC9 (struct wpa_supplicant*,struct p2p_go_neg_results*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct wpa_supplicant *wpa_s)
{
	struct hostapd_config *conf;
	struct p2p_go_neg_results params;
	struct csa_settings csa_settings;
	struct wpa_ssid *current_ssid = wpa_s->current_ssid;
	int old_freq = current_ssid->frequency;
	int ret;

	if (!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_AP_CSA)) {
		FUNC6(wpa_s, MSG_DEBUG, "CSA is not enabled");
		return -1;
	}

	/*
	 * TODO: This function may not always work correctly. For example,
	 * when we have a running GO and a BSS on a DFS channel.
	 */
	if (FUNC9(wpa_s, &params, 0, 0, 0, 0, 0, 0, NULL)) {
		FUNC6(wpa_s, MSG_DEBUG,
			"P2P CSA: Failed to select new frequency for GO");
		return -1;
	}

	if (current_ssid->frequency == params.freq) {
		FUNC6(wpa_s, MSG_DEBUG,
			"P2P CSA: Selected same frequency - not moving GO");
		return 0;
	}

	conf = FUNC1();
	if (!conf) {
		FUNC6(wpa_s, MSG_DEBUG,
			"P2P CSA: Failed to allocate default config");
		return -1;
	}

	current_ssid->frequency = params.freq;
	if (FUNC8(wpa_s, current_ssid, conf)) {
		FUNC6(wpa_s, MSG_DEBUG,
			"P2P CSA: Failed to create new GO config");
		ret = -1;
		goto out;
	}

	if (conf->hw_mode != wpa_s->ap_iface->current_mode->mode) {
		FUNC6(wpa_s, MSG_DEBUG,
			"P2P CSA: CSA to a different band is not supported");
		ret = -1;
		goto out;
	}

	FUNC5(&csa_settings, 0, sizeof(csa_settings));
	csa_settings.cs_count = P2P_GO_CSA_COUNT;
	csa_settings.block_tx = P2P_GO_CSA_BLOCK_TX;
	csa_settings.freq_params.freq = params.freq;
	csa_settings.freq_params.sec_channel_offset = conf->secondary_channel;
	csa_settings.freq_params.ht_enabled = conf->ieee80211n;
	csa_settings.freq_params.bandwidth = conf->secondary_channel ? 40 : 20;

	if (conf->ieee80211ac) {
		int freq1 = 0, freq2 = 0;
		u8 chan, opclass;

		if (FUNC4(params.freq,
						  conf->secondary_channel,
						  conf->vht_oper_chwidth,
						  &opclass, &chan) ==
		    NUM_HOSTAPD_MODES) {
			FUNC7(MSG_ERROR, "P2P CSA: Bad freq");
			ret = -1;
			goto out;
		}

		if (conf->vht_oper_centr_freq_seg0_idx)
			freq1 = FUNC3(
				NULL, opclass,
				conf->vht_oper_centr_freq_seg0_idx);

		if (conf->vht_oper_centr_freq_seg1_idx)
			freq2 = FUNC3(
				NULL, opclass,
				conf->vht_oper_centr_freq_seg1_idx);

		if (freq1 < 0 || freq2 < 0) {
			FUNC6(wpa_s, MSG_DEBUG,
				"P2P CSA: Selected invalid VHT center freqs");
			ret = -1;
			goto out;
		}

		csa_settings.freq_params.vht_enabled = conf->ieee80211ac;
		csa_settings.freq_params.center_freq1 = freq1;
		csa_settings.freq_params.center_freq2 = freq2;

		switch (conf->vht_oper_chwidth) {
		case CHANWIDTH_80MHZ:
		case CHANWIDTH_80P80MHZ:
			csa_settings.freq_params.bandwidth = 80;
			break;
		case CHANWIDTH_160MHZ:
			csa_settings.freq_params.bandwidth = 160;
			break;
		}
	}

	ret = FUNC0(wpa_s, &csa_settings);
out:
	current_ssid->frequency = old_freq;
	FUNC2(conf);
	return ret;
}
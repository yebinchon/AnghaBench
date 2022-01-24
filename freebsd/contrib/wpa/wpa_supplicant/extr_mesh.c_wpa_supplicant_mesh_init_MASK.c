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
struct TYPE_4__ {int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modes; } ;
struct wpa_supplicant {int* own_addr; int assoc_freq; int /*<<< orphan*/  ifname; TYPE_2__* conf; TYPE_1__ hw; struct wpa_ssid* current_ssid; int /*<<< orphan*/  drv_priv; int /*<<< orphan*/  driver; struct hostapd_iface* ifmsh; int /*<<< orphan*/  drv_flags; } ;
struct wpa_ssid {int frequency; int ht40; scalar_t__ max_oper_chwidth; int vht_center_freq2; int* mesh_basic_rates; scalar_t__ vht; } ;
struct mesh_conf {int dummy; } ;
struct hostapd_iface {int num_bss; struct mesh_conf* mconf; struct hostapd_data** bss; struct hostapd_config* conf; int /*<<< orphan*/  drv_flags; } ;
struct hostapd_freq_params {int freq; int sec_channel_offset; } ;
struct hostapd_data {int* own_addr; TYPE_3__* conf; int /*<<< orphan*/  dot11RSNASAERetransPeriod; int /*<<< orphan*/  max_plinks; struct hostapd_config* iconf; int /*<<< orphan*/  mesh_sta_free_cb; struct hostapd_iface* iface; int /*<<< orphan*/  drv_priv; int /*<<< orphan*/  driver; struct wpa_supplicant* msg_ctx; } ;
struct hostapd_config {int ieee80211h; int ieee80211d; char* country; scalar_t__ hw_mode; int channel; int secondary_channel; scalar_t__ vht_oper_chwidth; int vht_oper_centr_freq_seg0_idx; int vht_oper_centr_freq_seg1_idx; int* basic_rates; TYPE_3__** bss; } ;
typedef  int /*<<< orphan*/  basic_rates_erp ;
struct TYPE_6__ {int start_disabled; int /*<<< orphan*/  iface; int /*<<< orphan*/  ap_max_inactivity; int /*<<< orphan*/  mesh; } ;
struct TYPE_5__ {char* country; int /*<<< orphan*/  dot11RSNASAERetransPeriod; int /*<<< orphan*/  max_peer_links; int /*<<< orphan*/  mesh_max_inactivity; int /*<<< orphan*/  user_mpm; } ;

/* Variables and functions */
#define  CHANWIDTH_160MHZ 130 
#define  CHANWIDTH_80MHZ 129 
#define  CHANWIDTH_80P80MHZ 128 
 scalar_t__ DEFAULT_MAX_OPER_CHWIDTH ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 scalar_t__ HOSTAPD_MODE_IEEE80211A ; 
 scalar_t__ HOSTAPD_MODE_IEEE80211G ; 
 int /*<<< orphan*/  MESH_ENABLED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ NUM_HOSTAPD_MODES ; 
 struct hostapd_data* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hostapd_iface* FUNC1 () ; 
 struct hostapd_config* FUNC2 () ; 
 scalar_t__ FUNC3 (struct hostapd_iface*) ; 
 scalar_t__ FUNC4 (int,int*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mesh_conf* FUNC6 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  mesh_mpm_free_sta ; 
 void* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int* FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_supplicant*,struct wpa_ssid*,struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC16(struct wpa_supplicant *wpa_s,
				    struct wpa_ssid *ssid,
				    struct hostapd_freq_params *freq)
{
	struct hostapd_iface *ifmsh;
	struct hostapd_data *bss;
	struct hostapd_config *conf;
	struct mesh_conf *mconf;
	int basic_rates_erp[] = { 10, 20, 55, 60, 110, 120, 240, -1 };
	int rate_len;
	int frequency;

	if (!wpa_s->conf->user_mpm) {
		/* not much for us to do here */
		FUNC12(wpa_s, MSG_WARNING,
			"user_mpm is not enabled in configuration");
		return 0;
	}

	wpa_s->ifmsh = ifmsh = FUNC1();
	if (!ifmsh)
		return -ENOMEM;

	ifmsh->drv_flags = wpa_s->drv_flags;
	ifmsh->num_bss = 1;
	ifmsh->bss = FUNC7(wpa_s->ifmsh->num_bss,
			       sizeof(struct hostapd_data *));
	if (!ifmsh->bss)
		goto out_free;

	ifmsh->bss[0] = bss = FUNC0(NULL, NULL, NULL);
	if (!bss)
		goto out_free;

	ifmsh->bss[0]->msg_ctx = wpa_s;
	FUNC8(bss->own_addr, wpa_s->own_addr, ETH_ALEN);
	bss->driver = wpa_s->driver;
	bss->drv_priv = wpa_s->drv_priv;
	bss->iface = ifmsh;
	bss->mesh_sta_free_cb = mesh_mpm_free_sta;
	frequency = ssid->frequency;
	if (frequency != freq->freq &&
	    frequency == freq->freq + freq->sec_channel_offset * 20) {
		FUNC13(MSG_DEBUG, "mesh: pri/sec channels switched");
		frequency = freq->freq;
	}
	wpa_s->assoc_freq = frequency;
	wpa_s->current_ssid = ssid;

	/* setup an AP config for auth processing */
	conf = FUNC2();
	if (!conf)
		goto out_free;

	bss->conf = *conf->bss;
	bss->conf->start_disabled = 1;
	bss->conf->mesh = MESH_ENABLED;
	bss->conf->ap_max_inactivity = wpa_s->conf->mesh_max_inactivity;

	if (FUNC5(ssid->frequency, wpa_s->hw.modes,
			     wpa_s->hw.num_modes) && wpa_s->conf->country[0]) {
		conf->ieee80211h = 1;
		conf->ieee80211d = 1;
		conf->country[0] = wpa_s->conf->country[0];
		conf->country[1] = wpa_s->conf->country[1];
		conf->country[2] = ' ';
	}

	bss->iconf = conf;
	ifmsh->conf = conf;

	ifmsh->bss[0]->max_plinks = wpa_s->conf->max_peer_links;
	ifmsh->bss[0]->dot11RSNASAERetransPeriod =
		wpa_s->conf->dot11RSNASAERetransPeriod;
	FUNC10(bss->conf->iface, wpa_s->ifname, sizeof(bss->conf->iface));

	mconf = FUNC6(wpa_s, ssid);
	if (!mconf)
		goto out_free;
	ifmsh->mconf = mconf;

	/* need conf->hw_mode for supported rates. */
	conf->hw_mode = FUNC4(frequency, &conf->channel);
	if (conf->hw_mode == NUM_HOSTAPD_MODES) {
		FUNC13(MSG_ERROR, "Unsupported mesh mode frequency: %d MHz",
			   frequency);
		goto out_free;
	}
	if (ssid->ht40)
		conf->secondary_channel = ssid->ht40;
	if (conf->hw_mode == HOSTAPD_MODE_IEEE80211A && ssid->vht) {
		if (ssid->max_oper_chwidth != DEFAULT_MAX_OPER_CHWIDTH)
			conf->vht_oper_chwidth = ssid->max_oper_chwidth;
		switch (conf->vht_oper_chwidth) {
		case CHANWIDTH_80MHZ:
		case CHANWIDTH_80P80MHZ:
			FUNC4(
				frequency,
				&conf->vht_oper_centr_freq_seg0_idx);
			conf->vht_oper_centr_freq_seg0_idx += ssid->ht40 * 2;
			break;
		case CHANWIDTH_160MHZ:
			FUNC4(
				frequency,
				&conf->vht_oper_centr_freq_seg0_idx);
			conf->vht_oper_centr_freq_seg0_idx += ssid->ht40 * 2;
			conf->vht_oper_centr_freq_seg0_idx += 40 / 5;
			break;
		}
		FUNC4(ssid->vht_center_freq2,
				       &conf->vht_oper_centr_freq_seg1_idx);
	}

	if (ssid->mesh_basic_rates == NULL) {
		/*
		 * XXX: Hack! This is so an MPM which correctly sets the ERP
		 * mandatory rates as BSSBasicRateSet doesn't reject us. We
		 * could add a new hw_mode HOSTAPD_MODE_IEEE80211G_ERP, but
		 * this is way easier. This also makes our BSSBasicRateSet
		 * advertised in beacons match the one in peering frames, sigh.
		 */
		if (conf->hw_mode == HOSTAPD_MODE_IEEE80211G) {
			conf->basic_rates = FUNC9(basic_rates_erp,
						      sizeof(basic_rates_erp));
			if (!conf->basic_rates)
				goto out_free;
		}
	} else {
		rate_len = 0;
		while (1) {
			if (ssid->mesh_basic_rates[rate_len] < 1)
				break;
			rate_len++;
		}
		conf->basic_rates = FUNC7(rate_len + 1, sizeof(int));
		if (conf->basic_rates == NULL)
			goto out_free;
		FUNC8(conf->basic_rates, ssid->mesh_basic_rates,
			  rate_len * sizeof(int));
		conf->basic_rates[rate_len] = -1;
	}

	if (FUNC11(wpa_s)) {
		FUNC12(wpa_s, MSG_ERROR, "Failed to init mesh in driver");
		return -1;
	}

	if (FUNC3(ifmsh)) {
		FUNC13(MSG_ERROR,
			   "Failed to initialize hostapd interface for mesh");
		return -1;
	}

	FUNC14(wpa_s, ssid, conf);

	return 0;
out_free:
	FUNC15(wpa_s);
	return -ENOMEM;
}
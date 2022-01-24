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
struct wpabuf {int dummy; } ;
struct wpa_driver_ap_params {struct hostapd_freq_params* freq; scalar_t__ reenable; struct wpabuf* assocresp_ies; struct wpabuf* proberesp_ies; struct wpabuf* beacon_ies; } ;
struct hostapd_iface {int /*<<< orphan*/  freq; struct hostapd_hw_modes* current_mode; struct hostapd_config* conf; } ;
struct hostapd_hw_modes {int /*<<< orphan*/ * he_capab; int /*<<< orphan*/  vht_capab; } ;
struct hostapd_freq_params {int dummy; } ;
struct hostapd_data {int beacon_set_done; scalar_t__ reenable_beacon; scalar_t__ csa_in_progress; struct hostapd_iface* iface; } ;
struct hostapd_config {int /*<<< orphan*/  secondary_channel; int /*<<< orphan*/  ieee80211ax; int /*<<< orphan*/  ieee80211ac; int /*<<< orphan*/  ieee80211n; int /*<<< orphan*/  channel; int /*<<< orphan*/  hw_mode; } ;

/* Variables and functions */
 size_t IEEE80211_MODE_AP ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (struct hostapd_data*,struct wpabuf**,struct wpabuf**,struct wpabuf**) ; 
 int FUNC1 (struct hostapd_data*,struct wpa_driver_ap_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,struct wpabuf*,struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_config*) ; 
 scalar_t__ FUNC6 (struct hostapd_freq_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct hostapd_data*,struct wpa_driver_ap_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_driver_ap_params*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

int FUNC10(struct hostapd_data *hapd)
{
	struct wpa_driver_ap_params params;
	struct hostapd_freq_params freq;
	struct hostapd_iface *iface = hapd->iface;
	struct hostapd_config *iconf = iface->conf;
	struct hostapd_hw_modes *cmode = iface->current_mode;
	struct wpabuf *beacon, *proberesp, *assocresp;
	int res, ret = -1;

	if (hapd->csa_in_progress) {
		FUNC9(MSG_ERROR, "Cannot set beacons during CSA period");
		return -1;
	}

	hapd->beacon_set_done = 1;

	if (FUNC7(hapd, &params) < 0)
		return -1;

	if (FUNC0(hapd, &beacon, &proberesp, &assocresp) <
	    0)
		goto fail;

	params.beacon_ies = beacon;
	params.proberesp_ies = proberesp;
	params.assocresp_ies = assocresp;
	params.reenable = hapd->reenable_beacon;
	hapd->reenable_beacon = 0;

	if (cmode &&
	    FUNC6(&freq, iconf->hw_mode, iface->freq,
				    iconf->channel, iconf->ieee80211n,
				    iconf->ieee80211ac, iconf->ieee80211ax,
				    iconf->secondary_channel,
				    FUNC5(iconf),
				    FUNC3(iconf),
				    FUNC4(iconf),
				    cmode->vht_capab,
				    &cmode->he_capab[IEEE80211_MODE_AP]) == 0)
		params.freq = &freq;

	res = FUNC1(hapd, &params);
	FUNC2(hapd, beacon, proberesp, assocresp);
	if (res)
		FUNC9(MSG_ERROR, "Failed to set beacon parameters");
	else
		ret = 0;
fail:
	FUNC8(&params);
	return ret;
}
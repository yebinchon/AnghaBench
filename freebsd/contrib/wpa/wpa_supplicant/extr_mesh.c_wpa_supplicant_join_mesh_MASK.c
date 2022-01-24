#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int mesh_ht_enabled; int mesh_vht_enabled; int mesh_he_enabled; struct wpa_driver_mesh_join_params* mesh_params; TYPE_2__* conf; scalar_t__ mgmt_group_cipher; void* group_cipher; void* pairwise_cipher; } ;
struct wpa_ssid {int vht; int he; scalar_t__ beacon_int; scalar_t__ dtim_period; scalar_t__ mesh_rssi_threshold; int key_mgmt; int /*<<< orphan*/  max_oper_chwidth; int /*<<< orphan*/  vht_center_freq2; int /*<<< orphan*/  vht_center_freq1; scalar_t__ ht40; scalar_t__ ssid_len; scalar_t__ ssid; int /*<<< orphan*/  frequency; } ;
struct TYPE_7__ {int bandwidth; int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; scalar_t__ sec_channel_offset; scalar_t__ ht_enabled; int /*<<< orphan*/  he_enabled; int /*<<< orphan*/  vht_enabled; } ;
struct TYPE_5__ {scalar_t__ rssi_threshold; int auto_plinks; int /*<<< orphan*/  peer_link_timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_peer_links; } ;
struct wpa_driver_mesh_join_params {scalar_t__ beacon_int; scalar_t__ dtim_period; TYPE_3__ freq; TYPE_1__ conf; int /*<<< orphan*/  flags; scalar_t__ meshid_len; scalar_t__ meshid; } ;
struct TYPE_6__ {scalar_t__ beacon_int; scalar_t__ dtim_period; int user_mpm; int /*<<< orphan*/  mesh_max_inactivity; int /*<<< orphan*/  max_peer_links; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANWIDTH_160MHZ ; 
 int /*<<< orphan*/  CHANWIDTH_80MHZ ; 
 int /*<<< orphan*/  CHANWIDTH_80P80MHZ ; 
 int /*<<< orphan*/  CHANWIDTH_USE_HT ; 
 scalar_t__ DEFAULT_MESH_RSSI_THRESHOLD ; 
 int ENOENT ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 void* WPA_CIPHER_NONE ; 
 int /*<<< orphan*/  WPA_DRIVER_MESH_CONF_FLAG_RSSI_THRESHOLD ; 
 int /*<<< orphan*/  WPA_DRIVER_MESH_FLAG_AMPE ; 
 int /*<<< orphan*/  WPA_DRIVER_MESH_FLAG_DRIVER_MPM ; 
 int /*<<< orphan*/  WPA_DRIVER_MESH_FLAG_SAE_AUTH ; 
 int /*<<< orphan*/  WPA_DRIVER_MESH_FLAG_USER_MPM ; 
 int WPA_KEY_MGMT_SAE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,struct wpa_ssid*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_mesh_join_params*) ; 
 struct wpa_driver_mesh_join_params* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC6 (struct wpa_supplicant*,struct wpa_ssid*,TYPE_3__*) ; 
 int FUNC7 (struct wpa_supplicant*) ; 

int FUNC8(struct wpa_supplicant *wpa_s,
			     struct wpa_ssid *ssid)
{
	struct wpa_driver_mesh_join_params *params = FUNC2(sizeof(*params));
	int ret = 0;

	if (!ssid || !ssid->ssid || !ssid->ssid_len || !ssid->frequency ||
	    !params) {
		ret = -ENOENT;
		FUNC1(params);
		goto out;
	}

	FUNC5(wpa_s);

	wpa_s->pairwise_cipher = WPA_CIPHER_NONE;
	wpa_s->group_cipher = WPA_CIPHER_NONE;
	wpa_s->mgmt_group_cipher = 0;

	params->meshid = ssid->ssid;
	params->meshid_len = ssid->ssid_len;
	FUNC0(wpa_s, ssid, &params->freq);
	wpa_s->mesh_ht_enabled = !!params->freq.ht_enabled;
	wpa_s->mesh_vht_enabled = !!params->freq.vht_enabled;
	wpa_s->mesh_he_enabled = !!params->freq.he_enabled;
	if (params->freq.ht_enabled && params->freq.sec_channel_offset)
		ssid->ht40 = params->freq.sec_channel_offset;

	if (wpa_s->mesh_vht_enabled) {
		ssid->vht = 1;
		ssid->vht_center_freq1 = params->freq.center_freq1;
		switch (params->freq.bandwidth) {
		case 80:
			if (params->freq.center_freq2) {
				ssid->max_oper_chwidth = CHANWIDTH_80P80MHZ;
				ssid->vht_center_freq2 =
					params->freq.center_freq2;
			} else {
				ssid->max_oper_chwidth = CHANWIDTH_80MHZ;
			}
			break;
		case 160:
			ssid->max_oper_chwidth = CHANWIDTH_160MHZ;
			break;
		default:
			ssid->max_oper_chwidth = CHANWIDTH_USE_HT;
			break;
		}
	}
	if (wpa_s->mesh_he_enabled)
		ssid->he = 1;
	if (ssid->beacon_int > 0)
		params->beacon_int = ssid->beacon_int;
	else if (wpa_s->conf->beacon_int > 0)
		params->beacon_int = wpa_s->conf->beacon_int;
	if (ssid->dtim_period > 0)
		params->dtim_period = ssid->dtim_period;
	else if (wpa_s->conf->dtim_period > 0)
		params->dtim_period = wpa_s->conf->dtim_period;
	params->conf.max_peer_links = wpa_s->conf->max_peer_links;
	if (ssid->mesh_rssi_threshold < DEFAULT_MESH_RSSI_THRESHOLD) {
		params->conf.rssi_threshold = ssid->mesh_rssi_threshold;
		params->conf.flags |= WPA_DRIVER_MESH_CONF_FLAG_RSSI_THRESHOLD;
	}

	if (ssid->key_mgmt & WPA_KEY_MGMT_SAE) {
		params->flags |= WPA_DRIVER_MESH_FLAG_SAE_AUTH;
		params->flags |= WPA_DRIVER_MESH_FLAG_AMPE;
		wpa_s->conf->user_mpm = 1;
	}

	if (wpa_s->conf->user_mpm) {
		params->flags |= WPA_DRIVER_MESH_FLAG_USER_MPM;
		params->conf.auto_plinks = 0;
	} else {
		params->flags |= WPA_DRIVER_MESH_FLAG_DRIVER_MPM;
		params->conf.auto_plinks = 1;
	}
	params->conf.peer_link_timeout = wpa_s->conf->mesh_max_inactivity;

	FUNC1(wpa_s->mesh_params);
	wpa_s->mesh_params = params;
	if (FUNC6(wpa_s, ssid, &params->freq)) {
		FUNC4(wpa_s, MSG_ERROR, "Failed to init mesh");
		FUNC3(wpa_s);
		ret = -1;
		goto out;
	}

	ret = FUNC7(wpa_s);
out:
	return ret;
}
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
struct wpa_supplicant {int drv_enc; TYPE_1__* conf; } ;
struct wpa_ssid {int key_mgmt; scalar_t__ ieee80211w; int /*<<< orphan*/  dot11MeshHoldingTimeout; int /*<<< orphan*/  dot11MeshConfirmTimeout; int /*<<< orphan*/  dot11MeshRetryTimeout; int /*<<< orphan*/  dot11MeshMaxRetries; int /*<<< orphan*/  group_cipher; int /*<<< orphan*/  pairwise_cipher; int /*<<< orphan*/  ocv; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct mesh_conf {int security; scalar_t__ ieee80211w; int pairwise_cipher; int group_cipher; int mesh_auth_id; int /*<<< orphan*/  dot11MeshHoldingTimeout; int /*<<< orphan*/  dot11MeshConfirmTimeout; int /*<<< orphan*/  dot11MeshRetryTimeout; int /*<<< orphan*/  dot11MeshMaxRetries; int /*<<< orphan*/  mesh_sp_id; scalar_t__ mesh_cc_id; int /*<<< orphan*/  mesh_pm_id; int /*<<< orphan*/  mesh_pp_id; int /*<<< orphan*/  mgmt_group_cipher; int /*<<< orphan*/  ocv; int /*<<< orphan*/  meshid_len; int /*<<< orphan*/  meshid; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;

/* Variables and functions */
 int MESH_CONF_SEC_AMPE ; 
 int MESH_CONF_SEC_AUTH ; 
 int MESH_CONF_SEC_NONE ; 
 int /*<<< orphan*/  MESH_PATH_METRIC_AIRTIME ; 
 int /*<<< orphan*/  MESH_PATH_PROTOCOL_HWMP ; 
 int /*<<< orphan*/  MESH_SYNC_METHOD_NEIGHBOR_OFFSET ; 
 scalar_t__ MGMT_FRAME_PROTECTION_DEFAULT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int /*<<< orphan*/  WPA_CIPHER_AES_128_CMAC ; 
 int WPA_CIPHER_GTK_NOT_USED ; 
 int WPA_CIPHER_TKIP ; 
 int WPA_DRIVER_CAPA_ENC_BIP ; 
 int WPA_KEY_MGMT_SAE ; 
 int /*<<< orphan*/  FUNC0 (struct mesh_conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mesh_conf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mesh_conf * FUNC6(struct wpa_supplicant *wpa_s,
					     struct wpa_ssid *ssid)
{
	struct mesh_conf *conf;
	int cipher;

	conf = FUNC2(sizeof(struct mesh_conf));
	if (!conf)
		return NULL;

	FUNC1(conf->meshid, ssid->ssid, ssid->ssid_len);
	conf->meshid_len = ssid->ssid_len;

	if (ssid->key_mgmt & WPA_KEY_MGMT_SAE)
		conf->security |= MESH_CONF_SEC_AUTH |
			MESH_CONF_SEC_AMPE;
	else
		conf->security |= MESH_CONF_SEC_NONE;
#ifdef CONFIG_IEEE80211W
	conf->ieee80211w = ssid->ieee80211w;
	if (conf->ieee80211w == MGMT_FRAME_PROTECTION_DEFAULT) {
		if (wpa_s->drv_enc & WPA_DRIVER_CAPA_ENC_BIP)
			conf->ieee80211w = wpa_s->conf->pmf;
		else
			conf->ieee80211w = NO_MGMT_FRAME_PROTECTION;
	}
#endif /* CONFIG_IEEE80211W */
#ifdef CONFIG_OCV
	conf->ocv = ssid->ocv;
#endif /* CONFIG_OCV */

	cipher = FUNC5(ssid->pairwise_cipher, 0);
	if (cipher < 0 || cipher == WPA_CIPHER_TKIP) {
		FUNC3(wpa_s, MSG_INFO, "mesh: Invalid pairwise cipher");
		FUNC0(conf);
		return NULL;
	}
	conf->pairwise_cipher = cipher;

	cipher = FUNC4(ssid->group_cipher);
	if (cipher < 0 || cipher == WPA_CIPHER_TKIP ||
	    cipher == WPA_CIPHER_GTK_NOT_USED) {
		FUNC3(wpa_s, MSG_INFO, "mesh: Invalid group cipher");
		FUNC0(conf);
		return NULL;
	}

	conf->group_cipher = cipher;
	if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION)
		conf->mgmt_group_cipher = WPA_CIPHER_AES_128_CMAC;

	/* defaults */
	conf->mesh_pp_id = MESH_PATH_PROTOCOL_HWMP;
	conf->mesh_pm_id = MESH_PATH_METRIC_AIRTIME;
	conf->mesh_cc_id = 0;
	conf->mesh_sp_id = MESH_SYNC_METHOD_NEIGHBOR_OFFSET;
	conf->mesh_auth_id = (conf->security & MESH_CONF_SEC_AUTH) ? 1 : 0;
	conf->dot11MeshMaxRetries = ssid->dot11MeshMaxRetries;
	conf->dot11MeshRetryTimeout = ssid->dot11MeshRetryTimeout;
	conf->dot11MeshConfirmTimeout = ssid->dot11MeshConfirmTimeout;
	conf->dot11MeshHoldingTimeout = ssid->dot11MeshHoldingTimeout;

	return conf;
}
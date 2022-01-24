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
typedef  int /*<<< orphan*/  val ;
typedef  char u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpa_supplicant {int wps_ap_iter; scalar_t__ wps_fragment_size; TYPE_1__* go_params; scalar_t__ ap_iface; } ;
struct TYPE_4__ {scalar_t__ fragment_size; } ;
struct wpa_ssid {int temporary; int p2p_group; int pbss; char* ssid; size_t ssid_len; TYPE_2__ eap; } ;
typedef  int /*<<< orphan*/  hash ;
struct TYPE_3__ {int ssid_len; char* ssid; int freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PW_NFC_CONNECTION_HANDOVER ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_OOB_PUBKEY_HASH_LEN ; 
 int /*<<< orphan*/  WPS_PBC_WALK_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 char* FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct wpa_ssid*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*) ; 
 struct wpa_ssid* FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,struct wpa_ssid*,char const*,int) ; 
 int /*<<< orphan*/  wpas_wps_timeout ; 
 scalar_t__ FUNC14 (unsigned int*) ; 

__attribute__((used)) static int FUNC15(struct wpa_supplicant *wpa_s,
				 const u8 *dev_addr, const u8 *bssid,
				 const char *pin, int p2p_group, u16 dev_pw_id,
				 const u8 *peer_pubkey_hash,
				 const u8 *ssid_val, size_t ssid_len, int freq)
{
	struct wpa_ssid *ssid;
	char val[128 + 2 * WPS_OOB_PUBKEY_HASH_LEN];
	unsigned int rpin = 0;
	char hash[2 * WPS_OOB_PUBKEY_HASH_LEN + 10];

#ifdef CONFIG_AP
	if (wpa_s->ap_iface) {
		wpa_printf(MSG_DEBUG,
			   "WPS: Reject request to start Registrar(as station) operation while AP mode is enabled");
		return -1;
	}
#endif /* CONFIG_AP */
	FUNC11(wpa_s);
	if (bssid && FUNC1(bssid))
		bssid = NULL;
	ssid = FUNC12(wpa_s, 0, dev_addr, bssid);
	if (ssid == NULL) {
		FUNC9(MSG_DEBUG, "WPS: Could not add network");
		return -1;
	}
	ssid->temporary = 1;
	ssid->p2p_group = p2p_group;
	/*
	 * When starting a regular WPS process (not P2P group formation)
	 * the registrar/final station can be either AP or PCP
	 * so use a "don't care" value for the pbss flag.
	 */
	if (!p2p_group)
		ssid->pbss = 2;
	if (ssid_val) {
		ssid->ssid = FUNC3(ssid_len);
		if (ssid->ssid) {
			FUNC4(ssid->ssid, ssid_val, ssid_len);
			ssid->ssid_len = ssid_len;
		}
	}
	if (peer_pubkey_hash) {
		FUNC4(hash, " pkhash=", 8);
		FUNC10(hash + 8, sizeof(hash) - 8,
					   peer_pubkey_hash,
					   WPS_OOB_PUBKEY_HASH_LEN);
	} else {
		hash[0] = '\0';
	}
#ifdef CONFIG_P2P
	if (p2p_group && wpa_s->go_params && wpa_s->go_params->ssid_len) {
		os_free(ssid->ssid);
		ssid->ssid = os_zalloc(wpa_s->go_params->ssid_len + 1);
		if (ssid->ssid) {
			ssid->ssid_len = wpa_s->go_params->ssid_len;
			os_memcpy(ssid->ssid, wpa_s->go_params->ssid,
				  ssid->ssid_len);
			if (wpa_s->go_params->freq > 56160) {
				/* P2P in 60 GHz uses PBSS */
				ssid->pbss = 1;
			}
			wpa_hexdump_ascii(MSG_DEBUG, "WPS: Use specific AP "
					  "SSID", ssid->ssid, ssid->ssid_len);
		}
	}
#endif /* CONFIG_P2P */
	if (pin)
		FUNC5(val, sizeof(val), "\"pin=%s dev_pw_id=%u%s\"",
			    pin, dev_pw_id, hash);
	else if (pin == NULL && dev_pw_id == DEV_PW_NFC_CONNECTION_HANDOVER) {
		FUNC5(val, sizeof(val), "\"dev_pw_id=%u%s\"",
			    dev_pw_id, hash);
	} else {
		if (FUNC14(&rpin) < 0) {
			FUNC9(MSG_DEBUG, "WPS: Could not generate PIN");
			return -1;
		}
		FUNC5(val, sizeof(val), "\"pin=%08d dev_pw_id=%u%s\"",
			    rpin, dev_pw_id, hash);
	}
	if (FUNC7(ssid, "phase1", val, 0) < 0) {
		FUNC9(MSG_DEBUG, "WPS: Failed to set phase1 '%s'", val);
		return -1;
	}
	if (wpa_s->wps_fragment_size)
		ssid->eap.fragment_size = wpa_s->wps_fragment_size;
	FUNC0(WPS_PBC_WALK_TIME, 0, wpas_wps_timeout,
			       wpa_s, NULL);
	wpa_s->wps_ap_iter = 1;
	FUNC13(wpa_s, ssid, bssid, freq);
	return rpin;
}
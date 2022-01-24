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
struct wpa_ssid {struct wpa_ssid* next; } ;
struct wpa_cred {struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_config* range; } ;
struct wpa_config {struct wpa_config* non_pref_chan; struct wpa_config* sched_scan_plans; struct wpa_config* fst_group_id; struct wpa_config* wowlan_triggers; struct wpa_config* bgscan; struct wpa_config* osu_dir; int /*<<< orphan*/  ap_vendor_elements; struct wpa_config* sae_groups; struct wpa_config* ext_password_backend; int /*<<< orphan*/  wps_nfc_dev_pw; int /*<<< orphan*/  wps_nfc_dh_privkey; int /*<<< orphan*/  wps_nfc_dh_pubkey; struct wpa_config* freq_list; struct wpa_config* autoscan; TYPE_1__ p2p_no_go_freq; struct wpa_config* p2p_pref_chan; struct wpa_config* pssid; struct wpa_config* p2p_ssid_postfix; struct wpa_config* config_methods; struct wpa_config* serial_number; struct wpa_config* model_number; struct wpa_config* model_name; struct wpa_config* manufacturer; struct wpa_config* device_name; struct wpa_config* driver_param; int /*<<< orphan*/  pcsc_pin; struct wpa_config* pcsc_reader; struct wpa_config* openssl_ciphers; struct wpa_config* pkcs11_module_path; struct wpa_config* pkcs11_engine_path; struct wpa_config* opensc_engine_path; struct wpa_config* ctrl_interface_group; struct wpa_config* ctrl_interface; int /*<<< orphan*/ * wps_vendor_ext; int /*<<< orphan*/  wps_vendor_ext_m1; struct wpa_cred* cred; struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int MAX_WPS_VENDOR_EXT ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_cred*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct wpa_config *config)
{
	struct wpa_ssid *ssid, *prev = NULL;
	struct wpa_cred *cred, *cprev;
	int i;

	ssid = config->ssid;
	while (ssid) {
		prev = ssid;
		ssid = ssid->next;
		FUNC4(prev);
	}

	cred = config->cred;
	while (cred) {
		cprev = cred;
		cred = cred->next;
		FUNC3(cprev);
	}

	FUNC2(config);

	FUNC5(config->wps_vendor_ext_m1);
	for (i = 0; i < MAX_WPS_VENDOR_EXT; i++)
		FUNC5(config->wps_vendor_ext[i]);
	FUNC0(config->ctrl_interface);
	FUNC0(config->ctrl_interface_group);
	FUNC0(config->opensc_engine_path);
	FUNC0(config->pkcs11_engine_path);
	FUNC0(config->pkcs11_module_path);
	FUNC0(config->openssl_ciphers);
	FUNC0(config->pcsc_reader);
	FUNC1(config->pcsc_pin);
	FUNC0(config->driver_param);
	FUNC0(config->device_name);
	FUNC0(config->manufacturer);
	FUNC0(config->model_name);
	FUNC0(config->model_number);
	FUNC0(config->serial_number);
	FUNC0(config->config_methods);
	FUNC0(config->p2p_ssid_postfix);
	FUNC0(config->pssid);
	FUNC0(config->p2p_pref_chan);
	FUNC0(config->p2p_no_go_freq.range);
	FUNC0(config->autoscan);
	FUNC0(config->freq_list);
	FUNC5(config->wps_nfc_dh_pubkey);
	FUNC5(config->wps_nfc_dh_privkey);
	FUNC5(config->wps_nfc_dev_pw);
	FUNC0(config->ext_password_backend);
	FUNC0(config->sae_groups);
	FUNC5(config->ap_vendor_elements);
	FUNC0(config->osu_dir);
	FUNC0(config->bgscan);
	FUNC0(config->wowlan_triggers);
	FUNC0(config->fst_group_id);
	FUNC0(config->sched_scan_plans);
#ifdef CONFIG_MBO
	os_free(config->non_pref_chan);
#endif /* CONFIG_MBO */

	FUNC0(config);
}
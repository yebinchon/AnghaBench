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
struct wps_registrar_config {int /*<<< orphan*/  multi_ap_backhaul_network_key_len; scalar_t__ multi_ap_backhaul_network_key; int /*<<< orphan*/  multi_ap_backhaul_ssid_len; int /*<<< orphan*/  multi_ap_backhaul_ssid; int /*<<< orphan*/  force_per_enrollee_psk; int /*<<< orphan*/  dualband; int /*<<< orphan*/  static_wep_only; int /*<<< orphan*/  disable_auto_conf; int /*<<< orphan*/  extra_cred_len; scalar_t__ extra_cred; int /*<<< orphan*/  skip_cred_build; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  enrollee_seen_cb; int /*<<< orphan*/  set_sel_reg_cb; int /*<<< orphan*/  reg_success_cb; int /*<<< orphan*/  pin_needed_cb; int /*<<< orphan*/  set_ie_cb; int /*<<< orphan*/  new_psk_cb; } ;
struct wps_registrar {int sel_reg_dev_password_id_override; int sel_reg_config_methods_override; int /*<<< orphan*/  multi_ap_backhaul_network_key_len; scalar_t__ multi_ap_backhaul_network_key; int /*<<< orphan*/  multi_ap_backhaul_ssid_len; int /*<<< orphan*/  multi_ap_backhaul_ssid; int /*<<< orphan*/  force_per_enrollee_psk; int /*<<< orphan*/  dualband; int /*<<< orphan*/  static_wep_only; int /*<<< orphan*/  disable_auto_conf; int /*<<< orphan*/ * extra_cred; int /*<<< orphan*/  skip_cred_build; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  enrollee_seen_cb; int /*<<< orphan*/  set_sel_reg_cb; int /*<<< orphan*/  reg_success_cb; int /*<<< orphan*/  pin_needed_cb; int /*<<< orphan*/  set_ie_cb; int /*<<< orphan*/  new_psk_cb; struct wps_context* wps; int /*<<< orphan*/  nfc_pw_tokens; int /*<<< orphan*/  pins; } ;
struct wps_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct wps_registrar* FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_registrar*) ; 
 scalar_t__ FUNC7 (struct wps_registrar*) ; 

struct wps_registrar *
FUNC8(struct wps_context *wps,
		   const struct wps_registrar_config *cfg)
{
	struct wps_registrar *reg = FUNC4(sizeof(*reg));
	if (reg == NULL)
		return NULL;

	FUNC0(&reg->pins);
	FUNC0(&reg->nfc_pw_tokens);
	reg->wps = wps;
	reg->new_psk_cb = cfg->new_psk_cb;
	reg->set_ie_cb = cfg->set_ie_cb;
	reg->pin_needed_cb = cfg->pin_needed_cb;
	reg->reg_success_cb = cfg->reg_success_cb;
	reg->set_sel_reg_cb = cfg->set_sel_reg_cb;
	reg->enrollee_seen_cb = cfg->enrollee_seen_cb;
	reg->cb_ctx = cfg->cb_ctx;
	reg->skip_cred_build = cfg->skip_cred_build;
	if (cfg->extra_cred) {
		reg->extra_cred = FUNC5(cfg->extra_cred,
						    cfg->extra_cred_len);
		if (reg->extra_cred == NULL) {
			FUNC1(reg);
			return NULL;
		}
	}
	reg->disable_auto_conf = cfg->disable_auto_conf;
	reg->sel_reg_dev_password_id_override = -1;
	reg->sel_reg_config_methods_override = -1;
	reg->static_wep_only = cfg->static_wep_only;
	reg->dualband = cfg->dualband;
	reg->force_per_enrollee_psk = cfg->force_per_enrollee_psk;

	if (cfg->multi_ap_backhaul_ssid) {
		FUNC2(reg->multi_ap_backhaul_ssid,
			  cfg->multi_ap_backhaul_ssid,
			  cfg->multi_ap_backhaul_ssid_len);
		reg->multi_ap_backhaul_ssid_len =
			cfg->multi_ap_backhaul_ssid_len;
	}
	if (cfg->multi_ap_backhaul_network_key) {
		reg->multi_ap_backhaul_network_key =
			FUNC3(cfg->multi_ap_backhaul_network_key,
				  cfg->multi_ap_backhaul_network_key_len);
		if (reg->multi_ap_backhaul_network_key)
			reg->multi_ap_backhaul_network_key_len =
				cfg->multi_ap_backhaul_network_key_len;
	}

	if (FUNC7(reg)) {
		FUNC6(reg);
		return NULL;
	}

	return reg;
}
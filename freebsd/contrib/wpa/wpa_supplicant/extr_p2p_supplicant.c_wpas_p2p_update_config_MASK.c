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
typedef  int u8 ;
struct wpa_supplicant {int drv_flags; TYPE_3__* conf; TYPE_2__* wps; TYPE_1__* global; } ;
struct p2p_data {int dummy; } ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_6__ {int changed_parameters; char* country; int p2p_listen_reg_class; int p2p_listen_channel; int p2p_oper_reg_class; int p2p_oper_channel; int /*<<< orphan*/  p2p_passphrase_len; int /*<<< orphan*/  p2p_no_go_freq; int /*<<< orphan*/  p2p_pref_chan; int /*<<< orphan*/  num_p2p_pref_chan; int /*<<< orphan*/  p2p_intra_bss; scalar_t__ p2p_ssid_postfix; int /*<<< orphan*/ ** wps_vendor_ext; int /*<<< orphan*/  num_sec_device_types; scalar_t__ sec_device_type; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  device_type; int /*<<< orphan*/  device_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  config_methods; } ;
struct TYPE_4__ {struct p2p_data* p2p; } ;

/* Variables and functions */
 int CFG_CHANGED_CONFIG_METHODS ; 
 int CFG_CHANGED_COUNTRY ; 
 int CFG_CHANGED_DEVICE_NAME ; 
 int CFG_CHANGED_DEVICE_TYPE ; 
 int CFG_CHANGED_P2P_INTRA_BSS ; 
 int CFG_CHANGED_P2P_LISTEN_CHANNEL ; 
 int CFG_CHANGED_P2P_OPER_CHANNEL ; 
 int CFG_CHANGED_P2P_PASSPHRASE_LEN ; 
 int CFG_CHANGED_P2P_PREF_CHAN ; 
 int CFG_CHANGED_P2P_SSID_POSTFIX ; 
 int CFG_CHANGED_SEC_DEVICE_TYPE ; 
 int CFG_CHANGED_UUID ; 
 int CFG_CHANGED_VENDOR_EXTENSION ; 
 int CFG_CHANGED_WPS_STRING ; 
 int MAX_WPS_VENDOR_EXT ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WPA_DRIVER_FLAGS_P2P_CAPABLE ; 
 scalar_t__ FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct p2p_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct p2p_data*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct p2p_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct p2p_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct p2p_data*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct p2p_data*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC22(struct wpa_supplicant *wpa_s)
{
	struct p2p_data *p2p = wpa_s->global->p2p;

	if (p2p == NULL)
		return;

	if (!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_P2P_CAPABLE))
		return;

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_DEVICE_NAME)
		FUNC6(p2p, wpa_s->conf->device_name);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_DEVICE_TYPE)
		FUNC16(p2p, wpa_s->conf->device_type);

	if (wpa_s->wps &&
	    (wpa_s->conf->changed_parameters & CFG_CHANGED_CONFIG_METHODS))
		FUNC4(p2p, wpa_s->wps->config_methods);

	if (wpa_s->wps && (wpa_s->conf->changed_parameters & CFG_CHANGED_UUID))
		FUNC20(p2p, wpa_s->wps->uuid);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_WPS_STRING) {
		FUNC9(p2p, wpa_s->conf->manufacturer);
		FUNC10(p2p, wpa_s->conf->model_name);
		FUNC11(p2p, wpa_s->conf->model_number);
		FUNC18(p2p, wpa_s->conf->serial_number);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_SEC_DEVICE_TYPE)
		FUNC17(p2p,
				      (void *) wpa_s->conf->sec_device_type,
				      wpa_s->conf->num_sec_device_types);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_VENDOR_EXTENSION) {
		int i;
		FUNC3(p2p);
		for (i = 0; i < MAX_WPS_VENDOR_EXT; i++) {
			if (wpa_s->conf->wps_vendor_ext[i] == NULL)
				continue;
			FUNC2(
				p2p, wpa_s->conf->wps_vendor_ext[i]);
		}
	}

	if ((wpa_s->conf->changed_parameters & CFG_CHANGED_COUNTRY) &&
	    wpa_s->conf->country[0] && wpa_s->conf->country[1]) {
		char country[3];
		country[0] = wpa_s->conf->country[0];
		country[1] = wpa_s->conf->country[1];
		country[2] = 0x04;
		FUNC5(p2p, country);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_SSID_POSTFIX) {
		FUNC19(p2p, (u8 *) wpa_s->conf->p2p_ssid_postfix,
				     wpa_s->conf->p2p_ssid_postfix ?
				     FUNC1(wpa_s->conf->p2p_ssid_postfix) :
				     0);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_INTRA_BSS)
		FUNC7(p2p, wpa_s->conf->p2p_intra_bss);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_LISTEN_CHANNEL) {
		u8 reg_class, channel;
		int ret;
		unsigned int r;
		u8 channel_forced;

		if (wpa_s->conf->p2p_listen_reg_class &&
		    wpa_s->conf->p2p_listen_channel) {
			reg_class = wpa_s->conf->p2p_listen_reg_class;
			channel = wpa_s->conf->p2p_listen_channel;
			channel_forced = 1;
		} else {
			reg_class = 81;
			/*
			 * Pick one of the social channels randomly as the
			 * listen channel.
			 */
			if (FUNC0((u8 *) &r, sizeof(r)) < 0)
				channel = 1;
			else
				channel = 1 + (r % 3) * 5;
			channel_forced = 0;
		}
		ret = FUNC8(p2p, reg_class, channel,
					     channel_forced);
		if (ret)
			FUNC21(MSG_ERROR, "P2P: Own listen channel update "
				   "failed: %d", ret);
	}
	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_OPER_CHANNEL) {
		u8 op_reg_class, op_channel, cfg_op_channel;
		int ret = 0;
		unsigned int r;
		if (wpa_s->conf->p2p_oper_reg_class &&
		    wpa_s->conf->p2p_oper_channel) {
			op_reg_class = wpa_s->conf->p2p_oper_reg_class;
			op_channel = wpa_s->conf->p2p_oper_channel;
			cfg_op_channel = 1;
		} else {
			op_reg_class = 81;
			/*
			 * Use random operation channel from (1, 6, 11)
			 *if no other preference is indicated.
			 */
			if (FUNC0((u8 *) &r, sizeof(r)) < 0)
				op_channel = 1;
			else
				op_channel = 1 + (r % 3) * 5;
			cfg_op_channel = 0;
		}
		ret = FUNC13(p2p, op_reg_class, op_channel,
					   cfg_op_channel);
		if (ret)
			FUNC21(MSG_ERROR, "P2P: Own oper channel update "
				   "failed: %d", ret);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_PREF_CHAN) {
		if (FUNC15(p2p, wpa_s->conf->num_p2p_pref_chan,
				      wpa_s->conf->p2p_pref_chan) < 0) {
			FUNC21(MSG_ERROR, "P2P: Preferred channel list "
				   "update failed");
		}

		if (FUNC12(p2p, &wpa_s->conf->p2p_no_go_freq) < 0) {
			FUNC21(MSG_ERROR, "P2P: No GO channel list "
				   "update failed");
		}
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_P2P_PASSPHRASE_LEN)
		FUNC14(p2p, wpa_s->conf->p2p_passphrase_len);
}
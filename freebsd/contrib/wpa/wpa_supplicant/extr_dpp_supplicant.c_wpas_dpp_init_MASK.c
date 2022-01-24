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
typedef  int u8 ;
struct wpa_supplicant {int /*<<< orphan*/  dpp; int /*<<< orphan*/  gas_server; } ;
struct dpp_global_config {int /*<<< orphan*/  process_conf_obj; struct wpa_supplicant* cb_ctx; struct wpa_supplicant* msg_ctx; } ;
typedef  int /*<<< orphan*/  config ;
typedef  int /*<<< orphan*/  adv_proto_id ;

/* Variables and functions */
 int DPP_OUI_TYPE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_global_config*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_global_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wpas_dpp_gas_req_handler ; 
 int /*<<< orphan*/  wpas_dpp_gas_status_handler ; 
 int /*<<< orphan*/  wpas_dpp_process_conf_obj ; 

int FUNC4(struct wpa_supplicant *wpa_s)
{
	struct dpp_global_config config;
	u8 adv_proto_id[7];

	adv_proto_id[0] = WLAN_EID_VENDOR_SPECIFIC;
	adv_proto_id[1] = 5;
	FUNC0(&adv_proto_id[2], OUI_WFA);
	adv_proto_id[5] = DPP_OUI_TYPE;
	adv_proto_id[6] = 0x01;

	if (FUNC2(wpa_s->gas_server, adv_proto_id,
				sizeof(adv_proto_id), wpas_dpp_gas_req_handler,
				wpas_dpp_gas_status_handler, wpa_s) < 0)
		return -1;

	FUNC3(&config, 0, sizeof(config));
	config.msg_ctx = wpa_s;
	config.cb_ctx = wpa_s;
#ifdef CONFIG_DPP2
	config.process_conf_obj = wpas_dpp_process_conf_obj;
#endif /* CONFIG_DPP2 */
	wpa_s->dpp = FUNC1(&config);
	return wpa_s->dpp ? 0 : -1;
}
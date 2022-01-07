
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dpp; int gas_server; } ;
struct dpp_global_config {int process_conf_obj; struct wpa_supplicant* cb_ctx; struct wpa_supplicant* msg_ctx; } ;
typedef int config ;
typedef int adv_proto_id ;


 int DPP_OUI_TYPE ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int*,int ) ;
 int dpp_global_init (struct dpp_global_config*) ;
 scalar_t__ gas_server_register (int ,int*,int,int ,int ,struct wpa_supplicant*) ;
 int os_memset (struct dpp_global_config*,int ,int) ;
 int wpas_dpp_gas_req_handler ;
 int wpas_dpp_gas_status_handler ;
 int wpas_dpp_process_conf_obj ;

int wpas_dpp_init(struct wpa_supplicant *wpa_s)
{
 struct dpp_global_config config;
 u8 adv_proto_id[7];

 adv_proto_id[0] = WLAN_EID_VENDOR_SPECIFIC;
 adv_proto_id[1] = 5;
 WPA_PUT_BE24(&adv_proto_id[2], OUI_WFA);
 adv_proto_id[5] = DPP_OUI_TYPE;
 adv_proto_id[6] = 0x01;

 if (gas_server_register(wpa_s->gas_server, adv_proto_id,
    sizeof(adv_proto_id), wpas_dpp_gas_req_handler,
    wpas_dpp_gas_status_handler, wpa_s) < 0)
  return -1;

 os_memset(&config, 0, sizeof(config));
 config.msg_ctx = wpa_s;
 config.cb_ctx = wpa_s;



 wpa_s->dpp = dpp_global_init(&config);
 return wpa_s->dpp ? 0 : -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_2__ {int mbo_cell_capa; } ;


 int MBO_ATTR_ID_CELL_DATA_CAPA ;
 int MSG_DEBUG ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int*,int ) ;
 int wpa_printf (int ,char*,int) ;
 int wpa_supplicant_set_default_scan_ies (struct wpa_supplicant*) ;
 int wpas_mbo_send_wnm_notification (struct wpa_supplicant*,int*,int) ;
 int wpas_update_mbo_connect_params (struct wpa_supplicant*) ;

void wpas_mbo_update_cell_capa(struct wpa_supplicant *wpa_s, u8 mbo_cell_capa)
{
 u8 cell_capa[7];

 if (wpa_s->conf->mbo_cell_capa == mbo_cell_capa) {
  wpa_printf(MSG_DEBUG,
      "MBO: Cellular capability already set to %u",
      mbo_cell_capa);
  return;
 }

 wpa_s->conf->mbo_cell_capa = mbo_cell_capa;

 cell_capa[0] = WLAN_EID_VENDOR_SPECIFIC;
 cell_capa[1] = 5;
 WPA_PUT_BE24(cell_capa + 2, OUI_WFA);
 cell_capa[5] = MBO_ATTR_ID_CELL_DATA_CAPA;
 cell_capa[6] = mbo_cell_capa;

 wpas_mbo_send_wnm_notification(wpa_s, cell_capa, 7);
 wpa_supplicant_set_default_scan_ies(wpa_s);
 wpas_update_mbo_connect_params(wpa_s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_enc; TYPE_1__* conf; } ;
struct wpa_ssid {scalar_t__ ieee80211w; int key_mgmt; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;


 scalar_t__ MGMT_FRAME_PROTECTION_DEFAULT ;
 scalar_t__ MGMT_FRAME_PROTECTION_OPTIONAL ;
 int NO_MGMT_FRAME_PROTECTION ;
 int WPA_DRIVER_CAPA_ENC_BIP ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_WPS ;

int wpas_get_ssid_pmf(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 return NO_MGMT_FRAME_PROTECTION;

}

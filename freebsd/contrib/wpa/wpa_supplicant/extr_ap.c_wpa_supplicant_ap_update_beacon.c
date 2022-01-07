
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {struct hostapd_iface* ap_iface; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ mode; } ;
struct hostapd_iface {struct hostapd_data** bss; TYPE_2__* conf; } ;
struct hostapd_data {int * drv_priv; } ;
struct TYPE_4__ {TYPE_1__** bss; } ;
struct TYPE_3__ {void* p2p; } ;


 void* P2P_ENABLED ;
 void* P2P_GROUP_FORMATION ;
 void* P2P_GROUP_OWNER ;
 scalar_t__ WPAS_MODE_IBSS ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ;
 int hostapd_set_ap_wps_ie (struct hostapd_data*) ;
 int ieee802_11_set_beacons (struct hostapd_iface*) ;

int wpa_supplicant_ap_update_beacon(struct wpa_supplicant *wpa_s)
{
 struct hostapd_iface *iface = wpa_s->ap_iface;
 struct wpa_ssid *ssid = wpa_s->current_ssid;
 struct hostapd_data *hapd;

 if (ssid == ((void*)0) || wpa_s->ap_iface == ((void*)0) ||
     ssid->mode == WPAS_MODE_INFRA ||
     ssid->mode == WPAS_MODE_IBSS)
  return -1;
 hapd = iface->bss[0];
 if (hapd->drv_priv == ((void*)0))
  return -1;
 ieee802_11_set_beacons(iface);
 hostapd_set_ap_wps_ie(hapd);

 return 0;
}

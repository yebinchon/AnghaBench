
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_bss_params {char const* ifname; int enabled; int wpa; int wpa_pairwise; int ieee80211w; int rsn_preauth; int wpa_key_mgmt; int wpa_group; int ieee802_1x; } ;
struct hostapd_data {TYPE_1__* conf; } ;
typedef int params ;
struct TYPE_2__ {int wpa; int wpa_pairwise; int rsn_pairwise; int ieee80211w; int rsn_preauth; int wpa_key_mgmt; int wpa_group; int ieee802_1x; } ;


 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;
 int hostapd_set_ieee8021x (struct hostapd_data*,struct wpa_bss_params*) ;
 int os_memset (struct wpa_bss_params*,int ,int) ;

int hostapd_set_drv_ieee8021x(struct hostapd_data *hapd, const char *ifname,
         int enabled)
{
 struct wpa_bss_params params;
 os_memset(&params, 0, sizeof(params));
 params.ifname = ifname;
 params.enabled = enabled;
 if (enabled) {
  params.wpa = hapd->conf->wpa;
  params.ieee802_1x = hapd->conf->ieee802_1x;
  params.wpa_group = hapd->conf->wpa_group;
  if ((hapd->conf->wpa & (WPA_PROTO_WPA | WPA_PROTO_RSN)) ==
      (WPA_PROTO_WPA | WPA_PROTO_RSN))
   params.wpa_pairwise = hapd->conf->wpa_pairwise |
    hapd->conf->rsn_pairwise;
  else if (hapd->conf->wpa & WPA_PROTO_RSN)
   params.wpa_pairwise = hapd->conf->rsn_pairwise;
  else if (hapd->conf->wpa & WPA_PROTO_WPA)
   params.wpa_pairwise = hapd->conf->wpa_pairwise;
  params.wpa_key_mgmt = hapd->conf->wpa_key_mgmt;
  params.rsn_preauth = hapd->conf->rsn_preauth;



 }
 return hostapd_set_ieee8021x(hapd, &params);
}

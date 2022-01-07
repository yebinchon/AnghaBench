
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostapd_data {TYPE_3__* conf; } ;
struct TYPE_4__ {int idx; scalar_t__* key; int * len; scalar_t__ default_len; } ;
struct TYPE_5__ {TYPE_1__ wep; } ;
struct TYPE_6__ {TYPE_2__ ssid; int auth_algs; } ;


 int MSG_WARNING ;
 int WPA_ALG_WEP ;
 int hostapd_broadcast_wep_set (struct hostapd_data*) ;
 int hostapd_drv_set_authmode (struct hostapd_data*,int ) ;
 scalar_t__ hostapd_drv_set_key (char*,struct hostapd_data*,int ,int *,int,int,int *,int ,scalar_t__,int ) ;
 int hostapd_set_privacy (struct hostapd_data*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_setup_encryption(char *iface, struct hostapd_data *hapd)
{
 int i;

 hostapd_broadcast_wep_set(hapd);

 if (hapd->conf->ssid.wep.default_len) {
  hostapd_set_privacy(hapd, 1);
  return 0;
 }





 hostapd_drv_set_authmode(hapd, hapd->conf->auth_algs);

 for (i = 0; i < 4; i++) {
  if (hapd->conf->ssid.wep.key[i] &&
      hostapd_drv_set_key(iface, hapd, WPA_ALG_WEP, ((void*)0), i,
     i == hapd->conf->ssid.wep.idx, ((void*)0), 0,
     hapd->conf->ssid.wep.key[i],
     hapd->conf->ssid.wep.len[i])) {
   wpa_printf(MSG_WARNING, "Could not set WEP "
       "encryption.");
   return -1;
  }
  if (hapd->conf->ssid.wep.key[i] &&
      i == hapd->conf->ssid.wep.idx)
   hostapd_set_privacy(hapd, 1);
 }

 return 0;
}

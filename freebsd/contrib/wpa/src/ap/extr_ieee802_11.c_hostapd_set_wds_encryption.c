
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int dummy; } ;
struct TYPE_4__ {int idx; int * len; scalar_t__* key; } ;
struct hostapd_ssid {TYPE_2__ wep; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {scalar_t__ wpa; scalar_t__ ieee802_1x; struct hostapd_ssid ssid; } ;


 int MSG_WARNING ;
 int WPA_ALG_WEP ;
 scalar_t__ hostapd_drv_set_key (char*,struct hostapd_data*,int ,int *,int,int,int *,int ,scalar_t__,int ) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static void hostapd_set_wds_encryption(struct hostapd_data *hapd,
           struct sta_info *sta,
           char *ifname_wds)
{
 int i;
 struct hostapd_ssid *ssid = &hapd->conf->ssid;

 if (hapd->conf->ieee802_1x || hapd->conf->wpa)
  return;

 for (i = 0; i < 4; i++) {
  if (ssid->wep.key[i] &&
      hostapd_drv_set_key(ifname_wds, hapd, WPA_ALG_WEP, ((void*)0), i,
     i == ssid->wep.idx, ((void*)0), 0,
     ssid->wep.key[i], ssid->wep.len[i])) {
   wpa_printf(MSG_WARNING,
       "Could not set WEP keys for WDS interface; %s",
       ifname_wds);
   break;
  }
 }
}

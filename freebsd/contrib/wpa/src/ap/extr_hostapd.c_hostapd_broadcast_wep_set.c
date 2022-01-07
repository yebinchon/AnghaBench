
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idx; int * len; int * key; scalar_t__ default_len; } ;
struct hostapd_ssid {TYPE_2__ wep; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {int iface; struct hostapd_ssid ssid; } ;


 int MSG_WARNING ;
 int WPA_ALG_WEP ;
 int broadcast_ether_addr ;
 scalar_t__ hostapd_drv_set_key (int ,struct hostapd_data*,int ,int ,int,int,int *,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_broadcast_wep_set(struct hostapd_data *hapd)
{
 int errors = 0, idx;
 struct hostapd_ssid *ssid = &hapd->conf->ssid;

 idx = ssid->wep.idx;
 if (ssid->wep.default_len &&
     hostapd_drv_set_key(hapd->conf->iface,
    hapd, WPA_ALG_WEP, broadcast_ether_addr, idx,
    1, ((void*)0), 0, ssid->wep.key[idx],
    ssid->wep.len[idx])) {
  wpa_printf(MSG_WARNING, "Could not set WEP encryption.");
  errors++;
 }

 return errors;
}

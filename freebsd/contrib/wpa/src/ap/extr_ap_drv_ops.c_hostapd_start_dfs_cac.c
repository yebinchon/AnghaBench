
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {int cac_started; int dfs_cac_start; TYPE_1__* conf; struct hostapd_hw_modes* current_mode; struct hostapd_data** bss; } ;
struct hostapd_hw_modes {int * he_capab; int vht_capab; } ;
struct hostapd_freq_params {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_2__* driver; } ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;
struct TYPE_4__ {int (* start_dfs_cac ) (int ,struct hostapd_freq_params*) ;} ;
struct TYPE_3__ {int ieee80211h; } ;


 size_t IEEE80211_MODE_AP ;
 int MSG_ERROR ;
 scalar_t__ hostapd_set_freq_params (struct hostapd_freq_params*,int,int,int,int,int,int,int,int,int,int,int ,int *) ;
 int os_get_reltime (int *) ;
 int stub1 (int ,struct hostapd_freq_params*) ;
 int wpa_printf (int ,char*) ;

int hostapd_start_dfs_cac(struct hostapd_iface *iface,
     enum hostapd_hw_mode mode, int freq,
     int channel, int ht_enabled, int vht_enabled,
     int he_enabled,
     int sec_channel_offset, int oper_chwidth,
     int center_segment0, int center_segment1)
{
 struct hostapd_data *hapd = iface->bss[0];
 struct hostapd_freq_params data;
 int res;
 struct hostapd_hw_modes *cmode = iface->current_mode;

 if (!hapd->driver || !hapd->driver->start_dfs_cac || !cmode)
  return 0;

 if (!iface->conf->ieee80211h) {
  wpa_printf(MSG_ERROR, "Can't start DFS CAC, DFS functionality "
      "is not enabled");
  return -1;
 }

 if (hostapd_set_freq_params(&data, mode, freq, channel, ht_enabled,
        vht_enabled, he_enabled, sec_channel_offset,
        oper_chwidth, center_segment0,
        center_segment1,
        cmode->vht_capab,
        &cmode->he_capab[IEEE80211_MODE_AP])) {
  wpa_printf(MSG_ERROR, "Can't set freq params");
  return -1;
 }

 res = hapd->driver->start_dfs_cac(hapd->drv_priv, &data);
 if (!res) {
  iface->cac_started = 1;
  os_get_reltime(&iface->dfs_cac_start);
 }

 return res;
}

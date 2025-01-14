
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_data {int drv_priv; TYPE_2__* driver; TYPE_1__* iface; } ;
struct hostapd_channel_data {scalar_t__ chan; int flag; int freq; } ;
struct drv_acs_params {scalar_t__* ch_list; unsigned int ch_list_len; int* freq_list; int ht_enabled; int ht40_enabled; int vht_enabled; int ch_width; int hw_mode; } ;
typedef int params ;
struct TYPE_8__ {int num; } ;
struct TYPE_7__ {int ht_capab; scalar_t__ ieee80211ac; scalar_t__ ieee80211ax; scalar_t__ ieee80211n; scalar_t__ acs_exclude_dfs; TYPE_4__ acs_ch_list; int hw_mode; } ;
struct TYPE_6__ {int (* do_acs ) (int ,struct drv_acs_params*) ;} ;
struct TYPE_5__ {int num_hw_features; TYPE_3__* conf; struct hostapd_hw_modes* hw_features; struct hostapd_hw_modes* current_mode; } ;


 scalar_t__ CHANWIDTH_160MHZ ;
 scalar_t__ CHANWIDTH_80MHZ ;
 scalar_t__ CHANWIDTH_80P80MHZ ;
 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_RADAR ;
 int HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET ;
 int freq_range_list_includes (TYPE_4__*,scalar_t__) ;
 int hostapd_get_hw_mode_any_channels (struct hostapd_data*,struct hostapd_hw_modes*,int,int**) ;
 scalar_t__ hostapd_get_oper_chwidth (TYPE_3__*) ;
 int int_array_add_unique (int**,int ) ;
 int os_free (scalar_t__*) ;
 scalar_t__* os_malloc (int) ;
 int os_memset (struct drv_acs_params*,int ,int) ;
 int stub1 (int ,struct drv_acs_params*) ;

int hostapd_drv_do_acs(struct hostapd_data *hapd)
{
 struct drv_acs_params params;
 int ret, i, acs_ch_list_all = 0;
 u8 *channels = ((void*)0);
 unsigned int num_channels = 0;
 struct hostapd_hw_modes *mode;
 int *freq_list = ((void*)0);

 if (hapd->driver == ((void*)0) || hapd->driver->do_acs == ((void*)0))
  return 0;

 os_memset(&params, 0, sizeof(params));
 params.hw_mode = hapd->iface->conf->hw_mode;





 if (!hapd->iface->conf->acs_ch_list.num)
  acs_ch_list_all = 1;

 mode = hapd->iface->current_mode;
 if (mode) {
  channels = os_malloc(mode->num_channels);
  if (channels == ((void*)0))
   return -1;

  for (i = 0; i < mode->num_channels; i++) {
   struct hostapd_channel_data *chan = &mode->channels[i];
   if (!acs_ch_list_all &&
       !freq_range_list_includes(
        &hapd->iface->conf->acs_ch_list,
        chan->chan))
    continue;
   if (hapd->iface->conf->acs_exclude_dfs &&
       (chan->flag & HOSTAPD_CHAN_RADAR))
    continue;
   if (!(chan->flag & HOSTAPD_CHAN_DISABLED)) {
    channels[num_channels++] = chan->chan;
    int_array_add_unique(&freq_list, chan->freq);
   }
  }
 } else {
  for (i = 0; i < hapd->iface->num_hw_features; i++) {
   mode = &hapd->iface->hw_features[i];
   hostapd_get_hw_mode_any_channels(hapd, mode,
        acs_ch_list_all,
        &freq_list);
  }
 }

 params.ch_list = channels;
 params.ch_list_len = num_channels;
 params.freq_list = freq_list;

 params.ht_enabled = !!(hapd->iface->conf->ieee80211n);
 params.ht40_enabled = !!(hapd->iface->conf->ht_capab &
     HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET);
 params.vht_enabled = !!(hapd->iface->conf->ieee80211ac);
 params.ch_width = 20;
 if (hapd->iface->conf->ieee80211n && params.ht40_enabled)
  params.ch_width = 40;



 if ((hapd->iface->conf->ieee80211ax ||
      hapd->iface->conf->ieee80211ac) &&
     params.ht40_enabled) {
  u8 oper_chwidth = hostapd_get_oper_chwidth(hapd->iface->conf);

  if (oper_chwidth == CHANWIDTH_80MHZ)
   params.ch_width = 80;
  else if (oper_chwidth == CHANWIDTH_160MHZ ||
    oper_chwidth == CHANWIDTH_80P80MHZ)
   params.ch_width = 160;
 }

 ret = hapd->driver->do_acs(hapd->drv_priv, &params);
 os_free(channels);

 return ret;
}

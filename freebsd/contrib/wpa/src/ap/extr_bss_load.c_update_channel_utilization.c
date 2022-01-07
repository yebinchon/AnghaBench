
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int chan_util_samples_sum; int chan_util_num_sample_periods; int chan_util_average; scalar_t__ channel_utilization; int freq; } ;
struct hostapd_data {TYPE_1__* conf; struct hostapd_iface* iface; scalar_t__ started; scalar_t__ beacon_set_done; } ;
struct TYPE_2__ {int chan_util_avg_period; int bss_load_update_period; } ;


 int MSG_ERROR ;
 int eloop_register_timeout (unsigned int,unsigned int,void (*) (void*,void*),struct hostapd_data*,int *) ;
 scalar_t__ get_bss_load_update_timeout (struct hostapd_data*,unsigned int*,unsigned int*) ;
 int hostapd_drv_get_survey (struct hostapd_data*,int ) ;
 int ieee802_11_set_beacon (struct hostapd_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void update_channel_utilization(void *eloop_data, void *user_data)
{
 struct hostapd_data *hapd = eloop_data;
 unsigned int sec, usec;
 int err;
 struct hostapd_iface *iface = hapd->iface;

 if (!(hapd->beacon_set_done && hapd->started))
  return;

 err = hostapd_drv_get_survey(hapd, hapd->iface->freq);
 if (err) {
  wpa_printf(MSG_ERROR, "BSS Load: Failed to get survey data");
  return;
 }

 ieee802_11_set_beacon(hapd);

 if (get_bss_load_update_timeout(hapd, &sec, &usec) < 0)
  return;

 if (hapd->conf->chan_util_avg_period) {
  iface->chan_util_samples_sum += iface->channel_utilization;
  iface->chan_util_num_sample_periods +=
   hapd->conf->bss_load_update_period;
  if (iface->chan_util_num_sample_periods >=
      hapd->conf->chan_util_avg_period) {
   iface->chan_util_average =
    iface->chan_util_samples_sum /
    (iface->chan_util_num_sample_periods /
     hapd->conf->bss_load_update_period);
   iface->chan_util_samples_sum = 0;
   iface->chan_util_num_sample_periods = 0;
  }
 }

 eloop_register_timeout(sec, usec, update_channel_utilization, hapd,
          ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_config {int local_pwr_constraint; scalar_t__ airtime_mode; size_t num_bss; int * bss; int airtime_update_interval; scalar_t__ spectrum_mgmt_required; scalar_t__ ieee80211d; scalar_t__ ieee80211h; int * country; } ;


 scalar_t__ AIRTIME_MODE_STATIC ;
 int MSG_ERROR ;
 size_t NUM_TX_QUEUES ;
 scalar_t__ hostapd_config_check_bss (int ,struct hostapd_config*,int) ;
 scalar_t__ hostapd_config_check_cw (struct hostapd_config*,size_t) ;
 int wpa_printf (int ,char*) ;

int hostapd_config_check(struct hostapd_config *conf, int full_config)
{
 size_t i;

 if (full_config && conf->ieee80211d &&
     (!conf->country[0] || !conf->country[1])) {
  wpa_printf(MSG_ERROR, "Cannot enable IEEE 802.11d without "
      "setting the country_code");
  return -1;
 }

 if (full_config && conf->ieee80211h && !conf->ieee80211d) {
  wpa_printf(MSG_ERROR, "Cannot enable IEEE 802.11h without "
      "IEEE 802.11d enabled");
  return -1;
 }

 if (full_config && conf->local_pwr_constraint != -1 &&
     !conf->ieee80211d) {
  wpa_printf(MSG_ERROR, "Cannot add Power Constraint element without Country element");
  return -1;
 }

 if (full_config && conf->spectrum_mgmt_required &&
     conf->local_pwr_constraint == -1) {
  wpa_printf(MSG_ERROR, "Cannot set Spectrum Management bit without Country and Power Constraint elements");
  return -1;
 }
 for (i = 0; i < NUM_TX_QUEUES; i++) {
  if (hostapd_config_check_cw(conf, i))
   return -1;
 }

 for (i = 0; i < conf->num_bss; i++) {
  if (hostapd_config_check_bss(conf->bss[i], conf, full_config))
   return -1;
 }

 return 0;
}

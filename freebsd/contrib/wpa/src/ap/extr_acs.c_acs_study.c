
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct hostapd_channel_data {int chan; } ;
struct TYPE_2__ {scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; int channel; } ;


 scalar_t__ HOSTAPD_CHAN_VALID ;
 int MSG_ERROR ;
 int acs_adjust_center_freq (struct hostapd_iface*) ;
 int acs_cleanup (struct hostapd_iface*) ;
 int acs_fail (struct hostapd_iface*) ;
 struct hostapd_channel_data* acs_find_ideal_chan (struct hostapd_iface*) ;
 int acs_study_options (struct hostapd_iface*) ;
 scalar_t__ hostapd_acs_completed (struct hostapd_iface*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void acs_study(struct hostapd_iface *iface)
{
 struct hostapd_channel_data *ideal_chan;
 int err;

 err = acs_study_options(iface);
 if (err < 0) {
  wpa_printf(MSG_ERROR, "ACS: All study options have failed");
  goto fail;
 }

 ideal_chan = acs_find_ideal_chan(iface);
 if (!ideal_chan) {
  wpa_printf(MSG_ERROR, "ACS: Failed to compute ideal channel");
  err = -1;
  goto fail;
 }

 iface->conf->channel = ideal_chan->chan;

 if (iface->conf->ieee80211ac || iface->conf->ieee80211ax)
  acs_adjust_center_freq(iface);

 err = 0;
fail:




 if (hostapd_acs_completed(iface, err) == HOSTAPD_CHAN_VALID) {
  acs_cleanup(iface);
  return;
 }



 wpa_printf(MSG_ERROR, "ACS: Possibly channel configuration is invalid, please report this along with your config file.");
 acs_fail(iface);
}

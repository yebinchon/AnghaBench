
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* current_mode; } ;
struct hostapd_channel_data {int interference_factor; int freq; int chan; } ;
struct TYPE_2__ {int num_channels; struct hostapd_channel_data* channels; } ;


 int MSG_DEBUG ;
 int acs_survey_chan_interference_factor (struct hostapd_iface*,struct hostapd_channel_data*) ;
 int acs_usable_chan (struct hostapd_channel_data*) ;
 int is_in_chanlist (struct hostapd_iface*,struct hostapd_channel_data*) ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static void acs_survey_all_chans_intereference_factor(
 struct hostapd_iface *iface)
{
 int i;
 struct hostapd_channel_data *chan;

 for (i = 0; i < iface->current_mode->num_channels; i++) {
  chan = &iface->current_mode->channels[i];

  if (!acs_usable_chan(chan))
   continue;

  if (!is_in_chanlist(iface, chan))
   continue;

  wpa_printf(MSG_DEBUG, "ACS: Survey analysis for channel %d (%d MHz)",
      chan->chan, chan->freq);

  acs_survey_chan_interference_factor(iface, chan);

  wpa_printf(MSG_DEBUG, "ACS:  * interference factor average: %Lg",
      chan->interference_factor);
 }
}

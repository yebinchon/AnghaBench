
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* current_mode; } ;
struct hostapd_channel_data {int flag; } ;
struct TYPE_2__ {int num_channels; struct hostapd_channel_data* channels; } ;


 int HOSTAPD_CHAN_DISABLED ;
 scalar_t__ acs_survey_list_is_sufficient (struct hostapd_channel_data*) ;

__attribute__((used)) static int acs_surveys_are_sufficient(struct hostapd_iface *iface)
{
 int i;
 struct hostapd_channel_data *chan;
 int valid = 0;

 for (i = 0; i < iface->current_mode->num_channels; i++) {
  chan = &iface->current_mode->channels[i];
  if (!(chan->flag & HOSTAPD_CHAN_DISABLED) &&
      acs_survey_list_is_sufficient(chan))
   valid++;
 }


 return !!valid;
}

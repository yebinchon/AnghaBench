
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int flag; int survey_list; } ;


 int HOSTAPD_CHAN_DISABLED ;
 scalar_t__ acs_survey_list_is_sufficient (struct hostapd_channel_data*) ;
 int dl_list_empty (int *) ;

__attribute__((used)) static int acs_usable_chan(struct hostapd_channel_data *chan)
{
 return !dl_list_empty(&chan->survey_list) &&
  !(chan->flag & HOSTAPD_CHAN_DISABLED) &&
  acs_survey_list_is_sufficient(chan);
}

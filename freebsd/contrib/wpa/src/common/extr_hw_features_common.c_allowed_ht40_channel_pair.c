
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {scalar_t__ mode; } ;
struct hostapd_channel_data {int flag; int allowed_bw; } ;


 size_t ARRAY_SIZE (int*) ;
 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_WIDTH_40M ;
 int HOSTAPD_CHAN_WIDTH_40P ;
 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ chan_pri_allowed (struct hostapd_channel_data*) ;
 struct hostapd_channel_data* hw_get_channel_chan (struct hostapd_hw_modes*,int,int *) ;
 int wpa_printf (int ,char*,int,...) ;

int allowed_ht40_channel_pair(struct hostapd_hw_modes *mode, int pri_chan,
         int sec_chan)
{
 int ok, first;
 int allowed[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 140,
     149, 157, 165, 184, 192 };
 size_t k;
 struct hostapd_channel_data *p_chan, *s_chan;
 const int ht40_plus = pri_chan < sec_chan;

 p_chan = hw_get_channel_chan(mode, pri_chan, ((void*)0));
 if (!p_chan)
  return 0;

 if (pri_chan == sec_chan || !sec_chan) {
  if (chan_pri_allowed(p_chan))
   return 1;

  wpa_printf(MSG_ERROR, "Channel %d is not allowed as primary",
      pri_chan);
  return 0;
 }

 s_chan = hw_get_channel_chan(mode, sec_chan, ((void*)0));
 if (!s_chan)
  return 0;

 wpa_printf(MSG_DEBUG,
     "HT40: control channel: %d  secondary channel: %d",
     pri_chan, sec_chan);



 if ((s_chan->flag & HOSTAPD_CHAN_DISABLED) ||
     (ht40_plus && !(p_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40P)) ||
     (!ht40_plus && !(p_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40M))) {
  wpa_printf(MSG_ERROR, "HT40 secondary channel %d not allowed",
      sec_chan);
  return 0;
 }







 if (mode->mode != HOSTAPD_MODE_IEEE80211A)
  return 1;

 first = pri_chan < sec_chan ? pri_chan : sec_chan;

 ok = 0;
 for (k = 0; k < ARRAY_SIZE(allowed); k++) {
  if (first == allowed[k]) {
   ok = 1;
   break;
  }
 }
 if (!ok) {
  wpa_printf(MSG_ERROR, "HT40 channel pair (%d, %d) not allowed",
      pri_chan, sec_chan);
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int MSG_DEBUG ;
 int ieee80211_chan_to_freq (int *,size_t,size_t) ;
 int wpa_printf (int ,char*,size_t) ;

__attribute__((used)) static int wpas_add_channel(u8 op_class, u8 chan, u8 num_primary_channels,
       int *freqs)
{
 size_t i;

 for (i = 0; i < num_primary_channels; i++) {
  u8 primary_chan = chan - (2 * num_primary_channels - 2) + i * 4;

  freqs[i] = ieee80211_chan_to_freq(((void*)0), op_class, primary_chan);



  if (freqs[i] < 0 &&
      (op_class == 128 || op_class == 129 || op_class == 130))
   freqs[i] = 5000 + 5 * primary_chan;
  if (freqs[i] < 0) {
   wpa_printf(MSG_DEBUG,
       "Beacon Report: Invalid channel %u",
       chan);
   return -1;
  }
 }

 return 0;
}

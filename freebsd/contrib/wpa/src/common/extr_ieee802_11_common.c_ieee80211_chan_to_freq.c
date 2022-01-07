
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int cn_op_class_cc ;
 scalar_t__ country_match (int ,char const*) ;
 int eu_op_class_cc ;
 int ieee80211_chan_to_freq_cn (int ,int ) ;
 int ieee80211_chan_to_freq_eu (int ,int ) ;
 int ieee80211_chan_to_freq_global (int ,int ) ;
 int ieee80211_chan_to_freq_jp (int ,int ) ;
 int ieee80211_chan_to_freq_us (int ,int ) ;
 int jp_op_class_cc ;
 int us_op_class_cc ;

int ieee80211_chan_to_freq(const char *country, u8 op_class, u8 chan)
{
 int freq;

 if (country_match(us_op_class_cc, country)) {
  freq = ieee80211_chan_to_freq_us(op_class, chan);
  if (freq > 0)
   return freq;
 }

 if (country_match(eu_op_class_cc, country)) {
  freq = ieee80211_chan_to_freq_eu(op_class, chan);
  if (freq > 0)
   return freq;
 }

 if (country_match(jp_op_class_cc, country)) {
  freq = ieee80211_chan_to_freq_jp(op_class, chan);
  if (freq > 0)
   return freq;
 }

 if (country_match(cn_op_class_cc, country)) {
  freq = ieee80211_chan_to_freq_cn(op_class, chan);
  if (freq > 0)
   return freq;
 }

 return ieee80211_chan_to_freq_global(op_class, chan);
}

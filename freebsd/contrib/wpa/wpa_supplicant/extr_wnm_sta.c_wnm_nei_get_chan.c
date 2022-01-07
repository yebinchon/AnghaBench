
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {struct wpa_bss* current_bss; } ;
struct wpa_bss {int dummy; } ;


 int WLAN_EID_COUNTRY ;
 int ieee80211_chan_to_freq (char const*,int,int) ;
 int* wpa_bss_get_ie (struct wpa_bss*,int ) ;

__attribute__((used)) static int wnm_nei_get_chan(struct wpa_supplicant *wpa_s, u8 op_class, u8 chan)
{
 struct wpa_bss *bss = wpa_s->current_bss;
 const char *country = ((void*)0);
 int freq;

 if (bss) {
  const u8 *elem = wpa_bss_get_ie(bss, WLAN_EID_COUNTRY);

  if (elem && elem[1] >= 2)
   country = (const char *) (elem + 2);
 }

 freq = ieee80211_chan_to_freq(country, op_class, chan);
 if (freq <= 0 && op_class == 0) {





  if (chan >= 1 && chan <= 13)
   freq = 2407 + chan * 5;
  else if (chan == 14)
   freq = 2484;
  else if (chan >= 36 && chan <= 169)
   freq = 5000 + chan * 5;
 }
 return freq;
}

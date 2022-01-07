
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int caps; } ;


 int IEEE80211_CAP_ESS ;
 int IEEE80211_CAP_IBSS ;

__attribute__((used)) static int bss_is_ibss(struct wpa_bss *bss)
{
 return (bss->caps & (IEEE80211_CAP_ESS | IEEE80211_CAP_IBSS)) ==
  IEEE80211_CAP_IBSS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int caps; } ;


 int IEEE80211_CAP_DMG_MASK ;
 int IEEE80211_CAP_DMG_PBSS ;
 scalar_t__ bss_is_dmg (struct wpa_bss*) ;

__attribute__((used)) static inline int bss_is_pbss(struct wpa_bss *bss)
{
 return bss_is_dmg(bss) &&
  (bss->caps & IEEE80211_CAP_DMG_MASK) == IEEE80211_CAP_DMG_PBSS;
}

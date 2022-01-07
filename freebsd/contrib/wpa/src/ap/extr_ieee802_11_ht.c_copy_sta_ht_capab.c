
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sta_info {int flags; int * ht_capabilities; } ;
struct ieee80211_ht_capabilities {int dummy; } ;
struct hostapd_data {TYPE_2__* conf; TYPE_1__* iconf; } ;
struct TYPE_4__ {scalar_t__ disable_11n; } ;
struct TYPE_3__ {int ieee80211n; } ;


 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_HT ;
 int WLAN_STA_WMM ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,int) ;
 int * os_zalloc (int) ;

u16 copy_sta_ht_capab(struct hostapd_data *hapd, struct sta_info *sta,
        const u8 *ht_capab)
{





 if (!ht_capab || !(sta->flags & WLAN_STA_WMM) ||
     !hapd->iconf->ieee80211n || hapd->conf->disable_11n) {
  sta->flags &= ~WLAN_STA_HT;
  os_free(sta->ht_capabilities);
  sta->ht_capabilities = ((void*)0);
  return WLAN_STATUS_SUCCESS;
 }

 if (sta->ht_capabilities == ((void*)0)) {
  sta->ht_capabilities =
   os_zalloc(sizeof(struct ieee80211_ht_capabilities));
  if (sta->ht_capabilities == ((void*)0))
   return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 sta->flags |= WLAN_STA_HT;
 os_memcpy(sta->ht_capabilities, ht_capab,
    sizeof(struct ieee80211_ht_capabilities));

 return WLAN_STATUS_SUCCESS;
}

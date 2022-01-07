
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sta_info {int * vht_capabilities; int flags; } ;
struct ieee80211_vht_capabilities {int dummy; } ;
struct hostapd_data {TYPE_2__* iface; TYPE_1__* conf; TYPE_3__* iconf; } ;
struct TYPE_6__ {int ieee80211ac; } ;
struct TYPE_5__ {int current_mode; } ;
struct TYPE_4__ {scalar_t__ disable_11ac; } ;


 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_VHT ;
 int check_valid_vht_mcs (int ,int const*) ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,int) ;
 int * os_zalloc (int) ;

u16 copy_sta_vht_capab(struct hostapd_data *hapd, struct sta_info *sta,
         const u8 *vht_capab)
{

 if (!vht_capab ||
     !hapd->iconf->ieee80211ac || hapd->conf->disable_11ac ||
     !check_valid_vht_mcs(hapd->iface->current_mode, vht_capab)) {
  sta->flags &= ~WLAN_STA_VHT;
  os_free(sta->vht_capabilities);
  sta->vht_capabilities = ((void*)0);
  return WLAN_STATUS_SUCCESS;
 }

 if (sta->vht_capabilities == ((void*)0)) {
  sta->vht_capabilities =
   os_zalloc(sizeof(struct ieee80211_vht_capabilities));
  if (sta->vht_capabilities == ((void*)0))
   return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 sta->flags |= WLAN_STA_VHT;
 os_memcpy(sta->vht_capabilities, vht_capab,
    sizeof(struct ieee80211_vht_capabilities));

 return WLAN_STATUS_SUCCESS;
}

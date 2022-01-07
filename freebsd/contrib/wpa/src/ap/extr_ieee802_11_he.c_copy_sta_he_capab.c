
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sta_info {size_t he_capab_len; int * he_capab; int flags; } ;
struct ieee80211_he_capabilities {int dummy; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
typedef enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;
struct TYPE_2__ {int ieee80211ax; } ;


 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_HE ;
 int check_valid_he_mcs (struct hostapd_data*,int const*,int) ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,size_t) ;
 int os_memset (int *,int ,int) ;
 int * os_zalloc (int) ;

u16 copy_sta_he_capab(struct hostapd_data *hapd, struct sta_info *sta,
        enum ieee80211_op_mode opmode, const u8 *he_capab,
        size_t he_capab_len)
{
 if (!he_capab || !hapd->iconf->ieee80211ax ||
     !check_valid_he_mcs(hapd, he_capab, opmode) ||
     he_capab_len > sizeof(struct ieee80211_he_capabilities)) {
  sta->flags &= ~WLAN_STA_HE;
  os_free(sta->he_capab);
  sta->he_capab = ((void*)0);
  return WLAN_STATUS_SUCCESS;
 }

 if (!sta->he_capab) {
  sta->he_capab =
   os_zalloc(sizeof(struct ieee80211_he_capabilities));
  if (!sta->he_capab)
   return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 sta->flags |= WLAN_STA_HE;
 os_memset(sta->he_capab, 0, sizeof(struct ieee80211_he_capabilities));
 os_memcpy(sta->he_capab, he_capab, he_capab_len);
 sta->he_capab_len = he_capab_len;

 return WLAN_STATUS_SUCCESS;
}

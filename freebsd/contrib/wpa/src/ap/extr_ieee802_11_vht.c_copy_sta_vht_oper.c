
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int * vht_operation; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,int) ;
 int * os_zalloc (int) ;

u16 copy_sta_vht_oper(struct hostapd_data *hapd, struct sta_info *sta,
        const u8 *vht_oper)
{
 if (!vht_oper) {
  os_free(sta->vht_operation);
  sta->vht_operation = ((void*)0);
  return WLAN_STATUS_SUCCESS;
 }

 if (!sta->vht_operation) {
  sta->vht_operation =
   os_zalloc(sizeof(struct ieee80211_vht_operation));
  if (!sta->vht_operation)
   return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 os_memcpy(sta->vht_operation, vht_oper,
    sizeof(struct ieee80211_vht_operation));

 return WLAN_STATUS_SUCCESS;
}

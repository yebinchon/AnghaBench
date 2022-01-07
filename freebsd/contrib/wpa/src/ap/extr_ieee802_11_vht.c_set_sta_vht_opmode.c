
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int vht_opmode; int flags; } ;
struct hostapd_data {int dummy; } ;


 int WLAN_STATUS_SUCCESS ;
 int WLAN_STA_VHT_OPMODE_ENABLED ;

u16 set_sta_vht_opmode(struct hostapd_data *hapd, struct sta_info *sta,
         const u8 *vht_oper_notif)
{
 if (!vht_oper_notif) {
  sta->flags &= ~WLAN_STA_VHT_OPMODE_ENABLED;
  return WLAN_STATUS_SUCCESS;
 }

 sta->flags |= WLAN_STA_VHT_OPMODE_ENABLED;
 sta->vht_opmode = *vht_oper_notif;
 return WLAN_STATUS_SUCCESS;
}

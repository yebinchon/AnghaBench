
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; int addr; } ;
struct hostapd_data {int dummy; } ;


 int WPA_STA_AUTHORIZED ;
 int hostapd_sta_flags_to_drv (int ) ;
 int hostapd_sta_set_flags (struct hostapd_data*,int ,int ,int ,int ) ;

int hostapd_set_authorized(struct hostapd_data *hapd,
      struct sta_info *sta, int authorized)
{
 if (authorized) {
  return hostapd_sta_set_flags(hapd, sta->addr,
          hostapd_sta_flags_to_drv(
           sta->flags),
          WPA_STA_AUTHORIZED, ~0);
 }

 return hostapd_sta_set_flags(hapd, sta->addr,
         hostapd_sta_flags_to_drv(sta->flags),
         0, ~WPA_STA_AUTHORIZED);
}

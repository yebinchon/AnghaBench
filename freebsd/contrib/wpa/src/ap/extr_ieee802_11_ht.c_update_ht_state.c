
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; scalar_t__ ht_capabilities; } ;
struct hostapd_data {int iface; } ;


 int WLAN_STA_HT ;
 scalar_t__ hostapd_ht_operation_update (int ) ;
 int ieee802_11_set_beacons (int ) ;
 int update_sta_ht (struct hostapd_data*,struct sta_info*) ;
 int update_sta_no_ht (struct hostapd_data*,struct sta_info*) ;

void update_ht_state(struct hostapd_data *hapd, struct sta_info *sta)
{
 if ((sta->flags & WLAN_STA_HT) && sta->ht_capabilities)
  update_sta_ht(hapd, sta);
 else
  update_sta_no_ht(hapd, sta);

 if (hostapd_ht_operation_update(hapd->iface) > 0)
  ieee802_11_set_beacons(hapd->iface);
}

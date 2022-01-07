
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_description {int notempty; } ;
struct sta_info {int addr; int vlan_desc; struct sta_info* next; } ;
struct hostapd_data {TYPE_1__* conf; struct sta_info* sta_list; } ;
struct TYPE_2__ {int num_deny_mac; int deny_mac; } ;


 int WLAN_REASON_UNSPECIFIED ;
 int ap_sta_disconnect (struct hostapd_data*,struct sta_info*,int ,int ) ;
 scalar_t__ hostapd_maclist_found (int ,int ,int ,struct vlan_description*) ;
 int vlan_compare (struct vlan_description*,int ) ;

__attribute__((used)) static void hostapd_disassoc_deny_mac(struct hostapd_data *hapd)
{
 struct sta_info *sta;
 struct vlan_description vlan_id;

 for (sta = hapd->sta_list; sta; sta = sta->next) {
  if (hostapd_maclist_found(hapd->conf->deny_mac,
       hapd->conf->num_deny_mac, sta->addr,
       &vlan_id) &&
      (!vlan_id.notempty ||
       !vlan_compare(&vlan_id, sta->vlan_desc)))
   ap_sta_disconnect(hapd, sta, sta->addr,
       WLAN_REASON_UNSPECIFIED);
 }
}

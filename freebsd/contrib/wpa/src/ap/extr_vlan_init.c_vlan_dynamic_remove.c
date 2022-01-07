
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_vlan {scalar_t__ vlan_id; int ifname; struct hostapd_vlan* next; } ;
struct hostapd_data {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ VLAN_ID_WILDCARD ;
 int errno ;
 int strerror (int ) ;
 int vlan_dellink (int ,struct hostapd_data*) ;
 scalar_t__ vlan_if_remove (struct hostapd_data*,struct hostapd_vlan*) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void vlan_dynamic_remove(struct hostapd_data *hapd,
    struct hostapd_vlan *vlan)
{
 struct hostapd_vlan *next;

 while (vlan) {
  next = vlan->next;






  if (vlan->vlan_id != VLAN_ID_WILDCARD &&
      vlan_if_remove(hapd, vlan)) {
   wpa_printf(MSG_ERROR, "VLAN: Could not remove VLAN "
       "iface: %s: %s",
       vlan->ifname, strerror(errno));
  }


  vlan = next;
 }
}

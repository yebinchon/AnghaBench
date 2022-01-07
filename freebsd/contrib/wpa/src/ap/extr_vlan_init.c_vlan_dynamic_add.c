
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_vlan {scalar_t__ vlan_id; struct hostapd_vlan* next; int ifname; } ;
struct hostapd_data {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ VLAN_ID_WILDCARD ;
 int errno ;
 int strerror (int ) ;
 scalar_t__ vlan_if_add (struct hostapd_data*,struct hostapd_vlan*,int) ;
 int vlan_newlink (int ,struct hostapd_data*) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static int vlan_dynamic_add(struct hostapd_data *hapd,
       struct hostapd_vlan *vlan)
{
 while (vlan) {
  if (vlan->vlan_id != VLAN_ID_WILDCARD) {
   if (vlan_if_add(hapd, vlan, 1)) {
    wpa_printf(MSG_ERROR,
        "VLAN: Could not add VLAN %s: %s",
        vlan->ifname, strerror(errno));
    return -1;
   }



  }

  vlan = vlan->next;
 }

 return 0;
}

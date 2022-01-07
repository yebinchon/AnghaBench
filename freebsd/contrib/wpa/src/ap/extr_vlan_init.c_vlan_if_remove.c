
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_vlan {int ifname; int vlan_id; } ;
struct hostapd_data {int wpa_auth; } ;


 int MSG_ERROR ;
 int hostapd_vlan_if_remove (struct hostapd_data*,int ) ;
 int wpa_auth_release_group (int ,int ) ;
 int wpa_printf (int ,char*,int ,int) ;

int vlan_if_remove(struct hostapd_data *hapd, struct hostapd_vlan *vlan)
{
 int ret;

 ret = wpa_auth_release_group(hapd->wpa_auth, vlan->vlan_id);
 if (ret)
  wpa_printf(MSG_ERROR,
      "WPA deinitialization for VLAN %d failed (%d)",
      vlan->vlan_id, ret);

 return hostapd_vlan_if_remove(hapd, vlan->ifname);
}

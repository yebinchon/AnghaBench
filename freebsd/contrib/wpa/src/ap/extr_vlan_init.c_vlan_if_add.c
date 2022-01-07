
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostapd_vlan {int ifname; int vlan_id; } ;
struct hostapd_data {scalar_t__ wpa_auth; TYPE_3__* conf; } ;
struct TYPE_4__ {int * key; } ;
struct TYPE_5__ {TYPE_1__ wep; } ;
struct TYPE_6__ {TYPE_2__ ssid; } ;


 int MSG_ERROR ;
 int NUM_WEP_KEYS ;
 int hostapd_vlan_if_add (struct hostapd_data*,int ) ;
 scalar_t__ hostapd_vlan_if_remove (struct hostapd_data*,int ) ;
 int iface_exists (int ) ;
 int ifconfig_up (int ) ;
 int wpa_auth_ensure_group (scalar_t__,int ) ;
 scalar_t__ wpa_auth_release_group (scalar_t__,int ) ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static int vlan_if_add(struct hostapd_data *hapd, struct hostapd_vlan *vlan,
         int existsok)
{
 int ret, i;

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if (!hapd->conf->ssid.wep.key[i])
   continue;
  wpa_printf(MSG_ERROR,
      "VLAN: Refusing to set up VLAN iface %s with WEP",
      vlan->ifname);
  return -1;
 }

 if (!iface_exists(vlan->ifname))
  ret = hostapd_vlan_if_add(hapd, vlan->ifname);
 else if (!existsok)
  return -1;
 else
  ret = 0;

 if (ret)
  return ret;

 ifconfig_up(vlan->ifname);

 if (hapd->wpa_auth)
  ret = wpa_auth_ensure_group(hapd->wpa_auth, vlan->vlan_id);

 if (ret == 0)
  return ret;

 wpa_printf(MSG_ERROR, "WPA initialization for VLAN %d failed (%d)",
     vlan->vlan_id, ret);
 if (wpa_auth_release_group(hapd->wpa_auth, vlan->vlan_id))
  wpa_printf(MSG_ERROR, "WPA deinit of %s failed", vlan->ifname);


 if (hostapd_vlan_if_remove(hapd, vlan->ifname))
  wpa_printf(MSG_ERROR, "Removal of %s failed", vlan->ifname);

 return ret;
}

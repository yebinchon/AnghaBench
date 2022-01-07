
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan_ifname ;
struct hostapd_data {int dummy; } ;


 int DVLAN_CLEAN_VLAN ;
 int DVLAN_CLEAN_VLAN_PORT ;
 int DYNAMIC_VLAN_NAMING_WITH_DEVICE ;
 int IFNAMSIZ ;
 int MSG_WARNING ;
 int br_delif (char const*,char*) ;
 int dyn_iface_put (struct hostapd_data*,char*) ;
 int ifconfig_down (char*) ;
 int os_snprintf (char*,int,char*,...) ;
 int vlan_rem (char*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static void vlan_dellink_tagged(int vlan_naming, const char *tagged_interface,
    const char *br_name, int vid,
    struct hostapd_data *hapd)
{
 char vlan_ifname[IFNAMSIZ];
 int clean;
 int ret;

 if (vlan_naming == DYNAMIC_VLAN_NAMING_WITH_DEVICE)
  ret = os_snprintf(vlan_ifname, sizeof(vlan_ifname), "%s.%d",
      tagged_interface, vid);
 else
  ret = os_snprintf(vlan_ifname, sizeof(vlan_ifname), "vlan%d",
      vid);
 if (ret >= (int) sizeof(vlan_ifname))
  wpa_printf(MSG_WARNING,
      "VLAN: Interface name was truncated to %s",
      vlan_ifname);


 clean = dyn_iface_put(hapd, vlan_ifname);

 if (clean & DVLAN_CLEAN_VLAN_PORT)
  br_delif(br_name, vlan_ifname);

 if (clean & DVLAN_CLEAN_VLAN) {
  ifconfig_down(vlan_ifname);
  vlan_rem(vlan_ifname);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_vlan {scalar_t__* bridge; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_4__ {char* vlan_tagged_interface; } ;
struct TYPE_3__ {scalar_t__* vlan_bridge; TYPE_2__ ssid; } ;


 int IFNAMSIZ ;
 int MSG_WARNING ;
 int os_snprintf (char*,int,char*,...) ;
 int os_strlcpy (char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static void vlan_bridge_name(char *br_name, struct hostapd_data *hapd,
        struct hostapd_vlan *vlan, int vid)
{
 char *tagged_interface = hapd->conf->ssid.vlan_tagged_interface;
 int ret;

 if (vlan->bridge[0]) {
  os_strlcpy(br_name, vlan->bridge, IFNAMSIZ);
  ret = 0;
 } else if (hapd->conf->vlan_bridge[0]) {
  ret = os_snprintf(br_name, IFNAMSIZ, "%s%d",
      hapd->conf->vlan_bridge, vid);
 } else if (tagged_interface) {
  ret = os_snprintf(br_name, IFNAMSIZ, "br%s.%d",
      tagged_interface, vid);
 } else {
  ret = os_snprintf(br_name, IFNAMSIZ, "brvlan%d", vid);
 }
 if (ret >= IFNAMSIZ)
  wpa_printf(MSG_WARNING,
      "VLAN: Interface name was truncated to %s",
      br_name);
}

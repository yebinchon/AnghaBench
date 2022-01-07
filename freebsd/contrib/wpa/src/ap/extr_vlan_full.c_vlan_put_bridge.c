
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_3__ {char* vlan_tagged_interface; int vlan_naming; } ;
struct TYPE_4__ {TYPE_1__ ssid; } ;


 int DVLAN_CLEAN_BR ;
 int br_delbr (char const*) ;
 scalar_t__ br_getnumports (char const*) ;
 int dyn_iface_put (struct hostapd_data*,char const*) ;
 int ifconfig_down (char const*) ;
 int vlan_dellink_tagged (int,char*,char const*,int,struct hostapd_data*) ;

__attribute__((used)) static void vlan_put_bridge(const char *br_name, struct hostapd_data *hapd,
       int vid)
{
 int clean;
 char *tagged_interface = hapd->conf->ssid.vlan_tagged_interface;
 int vlan_naming = hapd->conf->ssid.vlan_naming;

 if (tagged_interface)
  vlan_dellink_tagged(vlan_naming, tagged_interface, br_name,
        vid, hapd);

 clean = dyn_iface_put(hapd, br_name);
 if ((clean & DVLAN_CLEAN_BR) && br_getnumports(br_name) == 0) {
  ifconfig_down(br_name);
  br_delbr(br_name);
 }
}

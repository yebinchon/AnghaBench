
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notempty; int untagged; int* tagged; } ;
struct hostapd_vlan {int configured; int clean; TYPE_1__ vlan_desc; int ifname; struct hostapd_vlan* next; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {char* bridge; struct hostapd_vlan* vlan; } ;


 int DVLAN_CLEAN_WLAN_PORT ;
 int DYNAMIC_VLAN_NAMING_WITH_DEVICE ;
 int IFNAMSIZ ;
 int MAX_NUM_TAGGED_VLAN ;
 int MAX_VLAN_ID ;
 int MSG_DEBUG ;
 int br_addif (char*,char const*) ;
 int ifconfig_up (char const*) ;
 scalar_t__ os_strcmp (char const*,int ) ;
 int vlan_bridge_name (char*,struct hostapd_data*,struct hostapd_vlan*,int) ;
 int vlan_get_bridge (char*,struct hostapd_data*,int) ;
 int vlan_newlink_tagged (int ,char const*,char*,int,struct hostapd_data*) ;
 int wpa_printf (int ,char*,char const*) ;

void vlan_newlink(const char *ifname, struct hostapd_data *hapd)
{
 char br_name[IFNAMSIZ];
 struct hostapd_vlan *vlan;
 int untagged, *tagged, i, notempty;

 wpa_printf(MSG_DEBUG, "VLAN: vlan_newlink(%s)", ifname);

 for (vlan = hapd->conf->vlan; vlan; vlan = vlan->next) {
  if (vlan->configured ||
      os_strcmp(ifname, vlan->ifname) != 0)
   continue;
  break;
 }
 if (!vlan)
  return;

 vlan->configured = 1;

 notempty = vlan->vlan_desc.notempty;
 untagged = vlan->vlan_desc.untagged;
 tagged = vlan->vlan_desc.tagged;

 if (!notempty) {

  if (hapd->conf->bridge[0] &&
      !br_addif(hapd->conf->bridge, ifname))
   vlan->clean |= DVLAN_CLEAN_WLAN_PORT;
 } else if (untagged > 0 && untagged <= MAX_VLAN_ID) {
  vlan_bridge_name(br_name, hapd, vlan, untagged);

  vlan_get_bridge(br_name, hapd, untagged);

  if (!br_addif(br_name, ifname))
   vlan->clean |= DVLAN_CLEAN_WLAN_PORT;
 }

 for (i = 0; i < MAX_NUM_TAGGED_VLAN && tagged[i]; i++) {
  if (tagged[i] == untagged ||
      tagged[i] <= 0 || tagged[i] > MAX_VLAN_ID ||
      (i > 0 && tagged[i] == tagged[i - 1]))
   continue;
  vlan_bridge_name(br_name, hapd, vlan, tagged[i]);
  vlan_get_bridge(br_name, hapd, tagged[i]);
  vlan_newlink_tagged(DYNAMIC_VLAN_NAMING_WITH_DEVICE,
        ifname, br_name, tagged[i], hapd);
 }

 ifconfig_up(ifname);
}

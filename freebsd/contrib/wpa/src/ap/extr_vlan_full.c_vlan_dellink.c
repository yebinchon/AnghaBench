
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notempty; int untagged; int* tagged; } ;
struct hostapd_vlan {char const* ifname; int clean; struct hostapd_vlan* next; TYPE_1__ vlan_desc; scalar_t__ configured; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {char* bridge; struct hostapd_vlan* vlan; } ;


 int DVLAN_CLEAN_WLAN_PORT ;
 int DYNAMIC_VLAN_NAMING_WITH_DEVICE ;
 int IFNAMSIZ ;
 int MAX_NUM_TAGGED_VLAN ;
 int MAX_VLAN_ID ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int br_delif (char*,char const*) ;
 int errno ;
 scalar_t__ if_nametoindex (char const*) ;
 int os_free (struct hostapd_vlan*) ;
 scalar_t__ os_strcmp (char const*,char const*) ;
 int strerror (int ) ;
 int vlan_bridge_name (char*,struct hostapd_data*,struct hostapd_vlan*,int) ;
 int vlan_dellink_tagged (int ,char const*,char*,int,struct hostapd_data*) ;
 scalar_t__ vlan_if_remove (struct hostapd_data*,struct hostapd_vlan*) ;
 int vlan_put_bridge (char*,struct hostapd_data*,int) ;
 int wpa_printf (int ,char*,char const*,...) ;

void vlan_dellink(const char *ifname, struct hostapd_data *hapd)
{
 struct hostapd_vlan *first, *prev, *vlan = hapd->conf->vlan;

 wpa_printf(MSG_DEBUG, "VLAN: vlan_dellink(%s)", ifname);

 first = prev = vlan;

 while (vlan) {
  if (os_strcmp(ifname, vlan->ifname) != 0) {
   prev = vlan;
   vlan = vlan->next;
   continue;
  }
  break;
 }
 if (!vlan)
  return;

 if (vlan->configured) {
  int notempty = vlan->vlan_desc.notempty;
  int untagged = vlan->vlan_desc.untagged;
  int *tagged = vlan->vlan_desc.tagged;
  char br_name[IFNAMSIZ];
  int i;

  for (i = 0; i < MAX_NUM_TAGGED_VLAN && tagged[i]; i++) {
   if (tagged[i] == untagged ||
       tagged[i] <= 0 || tagged[i] > MAX_VLAN_ID ||
       (i > 0 && tagged[i] == tagged[i - 1]))
    continue;
   vlan_bridge_name(br_name, hapd, vlan, tagged[i]);
   vlan_dellink_tagged(DYNAMIC_VLAN_NAMING_WITH_DEVICE,
         ifname, br_name, tagged[i], hapd);
   vlan_put_bridge(br_name, hapd, tagged[i]);
  }

  if (!notempty) {

   if (hapd->conf->bridge[0] &&
       (vlan->clean & DVLAN_CLEAN_WLAN_PORT))
    br_delif(hapd->conf->bridge, ifname);
  } else if (untagged > 0 && untagged <= MAX_VLAN_ID) {
   vlan_bridge_name(br_name, hapd, vlan, untagged);

   if (vlan->clean & DVLAN_CLEAN_WLAN_PORT)
    br_delif(br_name, vlan->ifname);

   vlan_put_bridge(br_name, hapd, untagged);
  }
 }





 if (if_nametoindex(vlan->ifname) && vlan_if_remove(hapd, vlan))
  wpa_printf(MSG_ERROR,
      "VLAN: Could not remove VLAN iface: %s: %s",
      vlan->ifname, strerror(errno));

 if (vlan == first)
  hapd->conf->vlan = vlan->next;
 else
  prev->next = vlan->next;

 os_free(vlan);
}

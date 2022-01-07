
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_vlan {struct hostapd_vlan* next; int ifname; int vlan_id; } ;
struct hostapd_data {TYPE_2__* conf; int full_dynamic_vlan; } ;
struct TYPE_3__ {scalar_t__ dynamic_vlan; scalar_t__ per_sta_vif; } ;
struct TYPE_4__ {struct hostapd_vlan* vlan; int iface; TYPE_1__ ssid; } ;


 scalar_t__ DYNAMIC_VLAN_DISABLED ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 int VLAN_ID_WILDCARD ;
 int full_dynamic_vlan_init (struct hostapd_data*) ;
 int os_free (struct hostapd_vlan*) ;
 int os_snprintf (int ,int,char*,int ) ;
 struct hostapd_vlan* os_zalloc (int) ;
 scalar_t__ vlan_dynamic_add (struct hostapd_data*,struct hostapd_vlan*) ;
 int wpa_printf (int ,char*,...) ;

int vlan_init(struct hostapd_data *hapd)
{




 if ((hapd->conf->ssid.dynamic_vlan != DYNAMIC_VLAN_DISABLED ||
      hapd->conf->ssid.per_sta_vif) &&
     !hapd->conf->vlan) {

  struct hostapd_vlan *vlan;
  int ret;

  vlan = os_zalloc(sizeof(*vlan));
  if (vlan == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Out of memory while assigning "
       "VLAN interfaces");
   return -1;
  }

  vlan->vlan_id = VLAN_ID_WILDCARD;
  ret = os_snprintf(vlan->ifname, sizeof(vlan->ifname), "%s.#",
      hapd->conf->iface);
  if (ret >= (int) sizeof(vlan->ifname)) {
   wpa_printf(MSG_WARNING,
       "VLAN: Interface name was truncated to %s",
       vlan->ifname);
  } else if (ret < 0) {
   os_free(vlan);
   return ret;
  }
  vlan->next = hapd->conf->vlan;
  hapd->conf->vlan = vlan;
 }

 if (vlan_dynamic_add(hapd, hapd->conf->vlan))
  return -1;

        return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int vlan_id; scalar_t__ num_setup_iface; scalar_t__ wpa_group_state; int references; struct wpa_group* next; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ WPA_GROUP_FATAL_FAILURE ;
 int wpa_group_put (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*,int) ;

int wpa_auth_release_group(struct wpa_authenticator *wpa_auth, int vlan_id)
{
 struct wpa_group *group;
 int ret = 0;

 if (wpa_auth == ((void*)0))
  return 0;

 group = wpa_auth->group;
 while (group) {
  if (group->vlan_id == vlan_id)
   break;
  group = group->next;
 }

 if (group == ((void*)0))
  return -1;

 wpa_printf(MSG_DEBUG,
     "WPA: Try stopping group state machine for VLAN ID %d",
     vlan_id);

 if (group->num_setup_iface <= 0) {
  wpa_printf(MSG_ERROR,
      "WPA: wpa_auth_release_group called more often than wpa_auth_ensure_group for VLAN ID %d, skipping.",
      vlan_id);
  return -1;
 }
 group->num_setup_iface--;

 if (group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
  ret = -1;

 if (group->references > 1) {
  wpa_printf(MSG_DEBUG,
      "WPA: Cannot stop group state machine for VLAN ID %d as references are still hold",
      vlan_id);
  ret = -2;
 }

 wpa_group_put(wpa_auth, group);

 return ret;
}

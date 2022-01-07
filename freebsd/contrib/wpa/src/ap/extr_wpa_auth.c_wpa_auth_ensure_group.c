
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int vlan_id; scalar_t__ wpa_group_state; int num_setup_iface; struct wpa_group* next; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_GROUP_FATAL_FAILURE ;
 struct wpa_group* wpa_auth_add_group (struct wpa_authenticator*,int) ;
 int wpa_group_get (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*,int) ;

int wpa_auth_ensure_group(struct wpa_authenticator *wpa_auth, int vlan_id)
{
 struct wpa_group *group;

 if (wpa_auth == ((void*)0))
  return 0;

 group = wpa_auth->group;
 while (group) {
  if (group->vlan_id == vlan_id)
   break;
  group = group->next;
 }

 if (group == ((void*)0)) {
  group = wpa_auth_add_group(wpa_auth, vlan_id);
  if (group == ((void*)0))
   return -1;
 }

 wpa_printf(MSG_DEBUG,
     "WPA: Ensure group state machine running for VLAN ID %d",
     vlan_id);

 wpa_group_get(wpa_auth, group);
 group->num_setup_iface++;

 if (group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
  return -1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {struct wpa_group* next; } ;
struct wpa_authenticator {TYPE_1__* group; } ;
struct TYPE_2__ {struct wpa_group* next; } ;


 int MSG_DEBUG ;
 struct wpa_group* wpa_group_init (struct wpa_authenticator*,int,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpa_group *
wpa_auth_add_group(struct wpa_authenticator *wpa_auth, int vlan_id)
{
 struct wpa_group *group;

 if (wpa_auth == ((void*)0) || wpa_auth->group == ((void*)0))
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "WPA: Add group state machine for VLAN-ID %d",
     vlan_id);
 group = wpa_group_init(wpa_auth, vlan_id, 0);
 if (group == ((void*)0))
  return ((void*)0);

 group->next = wpa_auth->group->next;
 wpa_auth->group->next = group;

 return group;
}

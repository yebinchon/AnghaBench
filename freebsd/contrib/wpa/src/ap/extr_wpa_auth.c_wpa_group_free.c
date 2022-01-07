
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {struct wpa_group* next; int vlan_id; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int MSG_DEBUG ;
 int os_free (struct wpa_group*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void wpa_group_free(struct wpa_authenticator *wpa_auth,
      struct wpa_group *group)
{
 struct wpa_group *prev = wpa_auth->group;

 wpa_printf(MSG_DEBUG, "WPA: Remove group state machine for VLAN-ID %d",
     group->vlan_id);

 while (prev) {
  if (prev->next == group) {

   prev->next = group->next;
   os_free(group);
   break;
  }
  prev = prev->next;
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int GN; int GM; int GN_igtk; int GM_igtk; int GTK; int wpa_group_state; int changed; int vlan_id; } ;
struct wpa_authenticator {int dummy; } ;


 int FALSE ;
 int MSG_DEBUG ;
 int WPA_GROUP_GTK_INIT ;
 int os_memset (int ,int ,int) ;
 int wpa_gtk_update (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void wpa_group_gtk_init(struct wpa_authenticator *wpa_auth,
          struct wpa_group *group)
{
 wpa_printf(MSG_DEBUG, "WPA: group state machine entering state "
     "GTK_INIT (VLAN-ID %d)", group->vlan_id);
 group->changed = FALSE;
 group->wpa_group_state = WPA_GROUP_GTK_INIT;


 os_memset(group->GTK, 0, sizeof(group->GTK));
 group->GN = 1;
 group->GM = 2;





 wpa_gtk_update(wpa_auth, group);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int GM; int GN; int GM_igtk; int GN_igtk; scalar_t__ GKeyDoneStations; int GTKReKey; int wpa_group_state; int changed; scalar_t__ vlan_id; } ;
struct wpa_authenticator {int dummy; } ;


 int FALSE ;
 int MSG_DEBUG ;
 int TRUE ;
 int WPA_GROUP_SETKEYS ;
 int wpa_auth_for_each_sta (struct wpa_authenticator*,int ,struct wpa_group*) ;
 int wpa_group_update_sta ;
 int wpa_gtk_update (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static void wpa_group_setkeys(struct wpa_authenticator *wpa_auth,
         struct wpa_group *group)
{
 int tmp;

 wpa_printf(MSG_DEBUG, "WPA: group state machine entering state "
     "SETKEYS (VLAN-ID %d)", group->vlan_id);
 group->changed = TRUE;
 group->wpa_group_state = WPA_GROUP_SETKEYS;
 group->GTKReKey = FALSE;
 tmp = group->GM;
 group->GM = group->GN;
 group->GN = tmp;
 wpa_gtk_update(wpa_auth, group);

 if (group->GKeyDoneStations) {
  wpa_printf(MSG_DEBUG, "wpa_group_setkeys: Unexpected "
      "GKeyDoneStations=%d when starting new GTK rekey",
      group->GKeyDoneStations);
  group->GKeyDoneStations = 0;
 }
 wpa_auth_for_each_sta(wpa_auth, wpa_group_update_sta, group);
 wpa_printf(MSG_DEBUG, "wpa_group_setkeys: GKeyDoneStations=%d",
     group->GKeyDoneStations);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int wpa_group_state; int changed; } ;
struct wpa_authenticator {int dummy; } ;


 int MSG_DEBUG ;
 int TRUE ;
 int WPA_GROUP_FATAL_FAILURE ;
 int wpa_auth_for_each_sta (struct wpa_authenticator*,int ,struct wpa_group*) ;
 int wpa_group_disconnect_cb ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_group_fatal_failure(struct wpa_authenticator *wpa_auth,
        struct wpa_group *group)
{
 wpa_printf(MSG_DEBUG, "WPA: group state machine entering state FATAL_FAILURE");
 group->changed = TRUE;
 group->wpa_group_state = WPA_GROUP_FATAL_FAILURE;
 wpa_auth_for_each_sta(wpa_auth, wpa_group_disconnect_cb, group);
}

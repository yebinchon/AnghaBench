
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {scalar_t__ wpa_group_state; int GInit; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int FALSE ;
 int MSG_DEBUG ;
 scalar_t__ WPA_GROUP_FATAL_FAILURE ;
 int wpa_group_sm_step (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*) ;

int wpa_init_keys(struct wpa_authenticator *wpa_auth)
{
 struct wpa_group *group = wpa_auth->group;

 wpa_printf(MSG_DEBUG, "WPA: Start group state machine to set initial "
     "keys");
 wpa_group_sm_step(wpa_auth, group);
 group->GInit = FALSE;
 wpa_group_sm_step(wpa_auth, group);
 if (group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
  return -1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {struct wpa_group* next; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int wpa_group_config_group_keys (struct wpa_authenticator*,struct wpa_group*) ;

void wpa_auth_reconfig_group_keys(struct wpa_authenticator *wpa_auth)
{
 struct wpa_group *group;

 if (!wpa_auth)
  return;
 for (group = wpa_auth->group; group; group = group->next)
  wpa_group_config_group_keys(wpa_auth, group);
}

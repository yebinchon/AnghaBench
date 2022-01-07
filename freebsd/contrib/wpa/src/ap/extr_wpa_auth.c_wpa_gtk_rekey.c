
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int GM; int GN; int GM_igtk; int GN_igtk; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int wpa_group_config_group_keys (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_gtk_update (struct wpa_authenticator*,struct wpa_group*) ;

void wpa_gtk_rekey(struct wpa_authenticator *wpa_auth)
{
 int tmp, i;
 struct wpa_group *group;

 if (wpa_auth == ((void*)0))
  return;

 group = wpa_auth->group;

 for (i = 0; i < 2; i++) {
  tmp = group->GM;
  group->GM = group->GN;
  group->GN = tmp;





  wpa_gtk_update(wpa_auth, group);
  wpa_group_config_group_keys(wpa_auth, group);
 }
}

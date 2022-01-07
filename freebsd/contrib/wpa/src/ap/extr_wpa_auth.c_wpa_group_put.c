
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {scalar_t__ references; } ;
struct wpa_authenticator {struct wpa_group* group; } ;


 int wpa_group_free (struct wpa_authenticator*,struct wpa_group*) ;

__attribute__((used)) static void wpa_group_put(struct wpa_authenticator *wpa_auth,
     struct wpa_group *group)
{

 if (wpa_auth->group == group)
  return;

 group->references--;
 if (group->references)
  return;
 wpa_group_free(wpa_auth, group);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int references; } ;
struct wpa_authenticator {struct wpa_group* group; } ;



__attribute__((used)) static void wpa_group_get(struct wpa_authenticator *wpa_auth,
     struct wpa_group *group)
{

 if (wpa_auth->group == group)
  return;

 group->references++;
}

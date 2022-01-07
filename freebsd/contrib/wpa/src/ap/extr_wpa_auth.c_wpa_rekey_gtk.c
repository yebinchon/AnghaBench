
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {struct wpa_group* next; scalar_t__ changed; int GTKReKey; } ;
struct TYPE_2__ {scalar_t__ wpa_group_rekey; } ;
struct wpa_authenticator {TYPE_1__ conf; struct wpa_group* group; } ;


 scalar_t__ FALSE ;
 int LOGGER_DEBUG ;
 int TRUE ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct wpa_authenticator*,int *) ;
 int wpa_auth_logger (struct wpa_authenticator*,int *,int ,char*) ;
 int wpa_group_get (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_group_put (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_group_sm_step (struct wpa_authenticator*,struct wpa_group*) ;

__attribute__((used)) static void wpa_rekey_gtk(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_authenticator *wpa_auth = eloop_ctx;
 struct wpa_group *group, *next;

 wpa_auth_logger(wpa_auth, ((void*)0), LOGGER_DEBUG, "rekeying GTK");
 group = wpa_auth->group;
 while (group) {
  wpa_group_get(wpa_auth, group);

  group->GTKReKey = TRUE;
  do {
   group->changed = FALSE;
   wpa_group_sm_step(wpa_auth, group);
  } while (group->changed);

  next = group->next;
  wpa_group_put(wpa_auth, group);
  group = next;
 }

 if (wpa_auth->conf.wpa_group_rekey) {
  eloop_register_timeout(wpa_auth->conf.wpa_group_rekey,
           0, wpa_rekey_gtk, wpa_auth, ((void*)0));
 }
}

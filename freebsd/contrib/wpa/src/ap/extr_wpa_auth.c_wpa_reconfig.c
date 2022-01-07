
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {int GInit; int GTK_len; } ;
struct TYPE_2__ {int wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; struct wpa_group* group; } ;
struct wpa_auth_config {int dummy; } ;


 int FALSE ;
 int MSG_ERROR ;
 int TRUE ;
 int os_memcpy (TYPE_1__*,struct wpa_auth_config*,int) ;
 scalar_t__ wpa_auth_gen_wpa_ie (struct wpa_authenticator*) ;
 int wpa_cipher_key_len (int ) ;
 int wpa_group_sm_step (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*) ;

int wpa_reconfig(struct wpa_authenticator *wpa_auth,
   struct wpa_auth_config *conf)
{
 struct wpa_group *group;
 if (wpa_auth == ((void*)0))
  return 0;

 os_memcpy(&wpa_auth->conf, conf, sizeof(*conf));
 if (wpa_auth_gen_wpa_ie(wpa_auth)) {
  wpa_printf(MSG_ERROR, "Could not generate WPA IE.");
  return -1;
 }





 group = wpa_auth->group;
 group->GTK_len = wpa_cipher_key_len(wpa_auth->conf.wpa_group);
 group->GInit = TRUE;
 wpa_group_sm_step(wpa_auth, group);
 group->GInit = FALSE;
 wpa_group_sm_step(wpa_auth, group);

 return 0;
}

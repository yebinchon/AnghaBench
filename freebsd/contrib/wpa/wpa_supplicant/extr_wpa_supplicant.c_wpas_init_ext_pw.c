
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * ext_pw; int eapol; TYPE_1__* conf; } ;
struct TYPE_2__ {int ext_password_backend; } ;


 int MSG_DEBUG ;
 int eapol_sm_set_ext_pw_ctx (int ,int *) ;
 int ext_password_deinit (int *) ;
 int * ext_password_init (char*,char*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (int ) ;
 int wpa_printf (int ,char*,...) ;

int wpas_init_ext_pw(struct wpa_supplicant *wpa_s)
{
 char *val, *pos;

 ext_password_deinit(wpa_s->ext_pw);
 wpa_s->ext_pw = ((void*)0);
 eapol_sm_set_ext_pw_ctx(wpa_s->eapol, ((void*)0));

 if (!wpa_s->conf->ext_password_backend)
  return 0;

 val = os_strdup(wpa_s->conf->ext_password_backend);
 if (val == ((void*)0))
  return -1;
 pos = os_strchr(val, ':');
 if (pos)
  *pos++ = '\0';

 wpa_printf(MSG_DEBUG, "EXT PW: Initialize backend '%s'", val);

 wpa_s->ext_pw = ext_password_init(val, pos);
 os_free(val);
 if (wpa_s->ext_pw == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EXT PW: Failed to initialize backend");
  return -1;
 }
 eapol_sm_set_ext_pw_ctx(wpa_s->eapol, wpa_s->ext_pw);

 return 0;
}

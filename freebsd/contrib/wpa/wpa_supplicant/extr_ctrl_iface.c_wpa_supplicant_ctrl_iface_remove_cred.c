
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_cred {char** domain; size_t num_domain; char* provisioning_sp; struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 struct wpa_cred* wpa_config_get_cred (TYPE_1__*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_ctrl_remove_cred (struct wpa_supplicant*,struct wpa_cred*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_remove_cred(struct wpa_supplicant *wpa_s,
       char *cmd)
{
 int id;
 struct wpa_cred *cred, *prev;



 if (os_strcmp(cmd, "all") == 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED all");
  cred = wpa_s->conf->cred;
  while (cred) {
   prev = cred;
   cred = cred->next;
   wpas_ctrl_remove_cred(wpa_s, prev);
  }
  return 0;
 }

 if (os_strncmp(cmd, "sp_fqdn=", 8) == 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED SP FQDN '%s'",
      cmd + 8);
  cred = wpa_s->conf->cred;
  while (cred) {
   prev = cred;
   cred = cred->next;
   if (prev->domain) {
    size_t i;
    for (i = 0; i < prev->num_domain; i++) {
     if (os_strcmp(prev->domain[i], cmd + 8)
         != 0)
      continue;
     wpas_ctrl_remove_cred(wpa_s, prev);
     break;
    }
   }
  }
  return 0;
 }

 if (os_strncmp(cmd, "provisioning_sp=", 16) == 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED provisioning SP FQDN '%s'",
      cmd + 16);
  cred = wpa_s->conf->cred;
  while (cred) {
   prev = cred;
   cred = cred->next;
   if (prev->provisioning_sp &&
       os_strcmp(prev->provisioning_sp, cmd + 16) == 0)
    wpas_ctrl_remove_cred(wpa_s, prev);
  }
  return 0;
 }

 id = atoi(cmd);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED id=%d", id);

 cred = wpa_config_get_cred(wpa_s->conf, id);
 return wpas_ctrl_remove_cred(wpa_s, cred);
}

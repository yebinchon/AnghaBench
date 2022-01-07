
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * dpp_pkex; int * dpp_pkex_bi; int * dpp_pkex_auth_cmd; int * dpp_pkex_identifier; int * dpp_pkex_code; } ;


 unsigned int atoi (char const*) ;
 int dpp_pkex_free (int *) ;
 int os_free (int *) ;
 scalar_t__ os_strcmp (char const*,char*) ;

int wpas_dpp_pkex_remove(struct wpa_supplicant *wpa_s, const char *id)
{
 unsigned int id_val;

 if (os_strcmp(id, "*") == 0) {
  id_val = 0;
 } else {
  id_val = atoi(id);
  if (id_val == 0)
   return -1;
 }

 if ((id_val != 0 && id_val != 1) || !wpa_s->dpp_pkex_code)
  return -1;


 os_free(wpa_s->dpp_pkex_code);
 wpa_s->dpp_pkex_code = ((void*)0);
 os_free(wpa_s->dpp_pkex_identifier);
 wpa_s->dpp_pkex_identifier = ((void*)0);
 os_free(wpa_s->dpp_pkex_auth_cmd);
 wpa_s->dpp_pkex_auth_cmd = ((void*)0);
 wpa_s->dpp_pkex_bi = ((void*)0);

 dpp_pkex_free(wpa_s->dpp_pkex);
 wpa_s->dpp_pkex = ((void*)0);
 return 0;
}

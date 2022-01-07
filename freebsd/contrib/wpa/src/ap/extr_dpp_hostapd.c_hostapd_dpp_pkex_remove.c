
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * dpp_pkex; int * dpp_pkex_bi; int * dpp_pkex_auth_cmd; int * dpp_pkex_identifier; int * dpp_pkex_code; } ;


 unsigned int atoi (char const*) ;
 int dpp_pkex_free (int *) ;
 int os_free (int *) ;
 scalar_t__ os_strcmp (char const*,char*) ;

int hostapd_dpp_pkex_remove(struct hostapd_data *hapd, const char *id)
{
 unsigned int id_val;

 if (os_strcmp(id, "*") == 0) {
  id_val = 0;
 } else {
  id_val = atoi(id);
  if (id_val == 0)
   return -1;
 }

 if ((id_val != 0 && id_val != 1) || !hapd->dpp_pkex_code)
  return -1;


 os_free(hapd->dpp_pkex_code);
 hapd->dpp_pkex_code = ((void*)0);
 os_free(hapd->dpp_pkex_identifier);
 hapd->dpp_pkex_identifier = ((void*)0);
 os_free(hapd->dpp_pkex_auth_cmd);
 hapd->dpp_pkex_auth_cmd = ((void*)0);
 hapd->dpp_pkex_bi = ((void*)0);

 dpp_pkex_free(hapd->dpp_pkex);
 hapd->dpp_pkex = ((void*)0);
 return 0;
}

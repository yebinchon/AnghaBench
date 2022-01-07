
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * eapol; int wpa; TYPE_1__* conf; } ;
struct TYPE_2__ {char* pkcs11_engine_path; char* pkcs11_module_path; } ;


 int eapol_sm_deinit (int *) ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 int wpa_sm_set_eapol (int ,int *) ;
 scalar_t__ wpa_supplicant_init_eapol (struct wpa_supplicant*) ;

int wpas_set_pkcs11_engine_and_module_path(struct wpa_supplicant *wpa_s,
        const char *pkcs11_engine_path,
        const char *pkcs11_module_path)
{
 char *pkcs11_engine_path_copy = ((void*)0);
 char *pkcs11_module_path_copy = ((void*)0);

 if (pkcs11_engine_path != ((void*)0)) {
  pkcs11_engine_path_copy = os_strdup(pkcs11_engine_path);
  if (pkcs11_engine_path_copy == ((void*)0))
   return -1;
 }
 if (pkcs11_module_path != ((void*)0)) {
  pkcs11_module_path_copy = os_strdup(pkcs11_module_path);
  if (pkcs11_module_path_copy == ((void*)0)) {
   os_free(pkcs11_engine_path_copy);
   return -1;
  }
 }

 os_free(wpa_s->conf->pkcs11_engine_path);
 os_free(wpa_s->conf->pkcs11_module_path);
 wpa_s->conf->pkcs11_engine_path = pkcs11_engine_path_copy;
 wpa_s->conf->pkcs11_module_path = pkcs11_module_path_copy;

 wpa_sm_set_eapol(wpa_s->wpa, ((void*)0));
 eapol_sm_deinit(wpa_s->eapol);
 wpa_s->eapol = ((void*)0);
 if (wpa_supplicant_init_eapol(wpa_s)) {

  if (pkcs11_engine_path != ((void*)0) && pkcs11_module_path != ((void*)0))
   wpas_set_pkcs11_engine_and_module_path(wpa_s, ((void*)0),
              ((void*)0));

  return -1;
 }
 wpa_sm_set_eapol(wpa_s->wpa, wpa_s->eapol);

 return 0;
}

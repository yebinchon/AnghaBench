
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_authenticator {struct eapol_authenticator* default_wep_key; int conf; } ;


 int eapol_auth_conf_free (int *) ;
 int os_free (struct eapol_authenticator*) ;

void eapol_auth_deinit(struct eapol_authenticator *eapol)
{
 if (eapol == ((void*)0))
  return;

 eapol_auth_conf_free(&eapol->conf);
 os_free(eapol->default_wep_key);
 os_free(eapol);
}

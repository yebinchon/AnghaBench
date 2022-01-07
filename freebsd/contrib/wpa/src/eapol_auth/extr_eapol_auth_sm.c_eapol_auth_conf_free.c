
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_auth_config {int * erp_domain; int * eap_fast_a_id_info; int * eap_fast_a_id; int * pac_opaque_encr_key; int * eap_req_id_text; } ;


 int os_free (int *) ;

__attribute__((used)) static void eapol_auth_conf_free(struct eapol_auth_config *conf)
{
 os_free(conf->eap_req_id_text);
 conf->eap_req_id_text = ((void*)0);
 os_free(conf->pac_opaque_encr_key);
 conf->pac_opaque_encr_key = ((void*)0);
 os_free(conf->eap_fast_a_id);
 conf->eap_fast_a_id = ((void*)0);
 os_free(conf->eap_fast_a_id_info);
 conf->eap_fast_a_id_info = ((void*)0);
 os_free(conf->erp_domain);
 conf->erp_domain = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_error_code; int get_emsk; int get_identity; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_SIM ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_sim_deinit ;
 int eap_sim_deinit_for_reauth ;
 int eap_sim_getKey ;
 int eap_sim_get_emsk ;
 int eap_sim_get_error_code ;
 int eap_sim_get_identity ;
 int eap_sim_get_session_id ;
 int eap_sim_has_reauth_data ;
 int eap_sim_init ;
 int eap_sim_init_for_reauth ;
 int eap_sim_isKeyAvailable ;
 int eap_sim_process ;

int eap_peer_sim_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_SIM, "SIM");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_sim_init;
 eap->deinit = eap_sim_deinit;
 eap->process = eap_sim_process;
 eap->isKeyAvailable = eap_sim_isKeyAvailable;
 eap->getKey = eap_sim_getKey;
 eap->getSessionId = eap_sim_get_session_id;
 eap->has_reauth_data = eap_sim_has_reauth_data;
 eap->deinit_for_reauth = eap_sim_deinit_for_reauth;
 eap->init_for_reauth = eap_sim_init_for_reauth;
 eap->get_identity = eap_sim_get_identity;
 eap->get_emsk = eap_sim_get_emsk;
 eap->get_error_code = eap_sim_get_error_code;

 return eap_peer_method_register(eap);
}

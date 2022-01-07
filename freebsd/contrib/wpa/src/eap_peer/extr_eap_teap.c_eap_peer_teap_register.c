
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int get_status; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TEAP ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_teap_deinit ;
 int eap_teap_deinit_for_reauth ;
 int eap_teap_getKey ;
 int eap_teap_get_emsk ;
 int eap_teap_get_session_id ;
 int eap_teap_get_status ;
 int eap_teap_has_reauth_data ;
 int eap_teap_init ;
 int eap_teap_init_for_reauth ;
 int eap_teap_isKeyAvailable ;
 int eap_teap_process ;

int eap_peer_teap_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_TEAP, "TEAP");
 if (!eap)
  return -1;

 eap->init = eap_teap_init;
 eap->deinit = eap_teap_deinit;
 eap->process = eap_teap_process;
 eap->isKeyAvailable = eap_teap_isKeyAvailable;
 eap->getKey = eap_teap_getKey;
 eap->getSessionId = eap_teap_get_session_id;
 eap->get_status = eap_teap_get_status;





 eap->get_emsk = eap_teap_get_emsk;

 return eap_peer_method_register(eap);
}

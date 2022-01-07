
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int get_status; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_FAST ;
 int EAP_VENDOR_IETF ;
 int eap_fast_deinit ;
 int eap_fast_deinit_for_reauth ;
 int eap_fast_getKey ;
 int eap_fast_get_emsk ;
 int eap_fast_get_session_id ;
 int eap_fast_get_status ;
 int eap_fast_has_reauth_data ;
 int eap_fast_init ;
 int eap_fast_init_for_reauth ;
 int eap_fast_isKeyAvailable ;
 int eap_fast_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_fast_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_FAST, "FAST");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_fast_init;
 eap->deinit = eap_fast_deinit;
 eap->process = eap_fast_process;
 eap->isKeyAvailable = eap_fast_isKeyAvailable;
 eap->getKey = eap_fast_getKey;
 eap->getSessionId = eap_fast_get_session_id;
 eap->get_status = eap_fast_get_status;





 eap->get_emsk = eap_fast_get_emsk;

 return eap_peer_method_register(eap);
}

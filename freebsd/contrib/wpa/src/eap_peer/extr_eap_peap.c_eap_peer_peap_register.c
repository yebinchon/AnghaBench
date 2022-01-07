
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int get_status; int get_emsk; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PEAP ;
 int EAP_VENDOR_IETF ;
 int eap_peap_deinit ;
 int eap_peap_deinit_for_reauth ;
 int eap_peap_getKey ;
 int eap_peap_get_emsk ;
 int eap_peap_get_session_id ;
 int eap_peap_get_status ;
 int eap_peap_has_reauth_data ;
 int eap_peap_init ;
 int eap_peap_init_for_reauth ;
 int eap_peap_isKeyAvailable ;
 int eap_peap_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_peap_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_PEAP, "PEAP");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_peap_init;
 eap->deinit = eap_peap_deinit;
 eap->process = eap_peap_process;
 eap->isKeyAvailable = eap_peap_isKeyAvailable;
 eap->getKey = eap_peap_getKey;
 eap->get_emsk = eap_peap_get_emsk;
 eap->get_status = eap_peap_get_status;
 eap->has_reauth_data = eap_peap_has_reauth_data;
 eap->deinit_for_reauth = eap_peap_deinit_for_reauth;
 eap->init_for_reauth = eap_peap_init_for_reauth;
 eap->getSessionId = eap_peap_get_session_id;

 return eap_peer_method_register(eap);
}

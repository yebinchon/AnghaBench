
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_error_code; int get_emsk; int get_identity; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_AKA ;
 int EAP_VENDOR_IETF ;
 int eap_aka_deinit ;
 int eap_aka_deinit_for_reauth ;
 int eap_aka_getKey ;
 int eap_aka_get_emsk ;
 int eap_aka_get_error_code ;
 int eap_aka_get_identity ;
 int eap_aka_get_session_id ;
 int eap_aka_has_reauth_data ;
 int eap_aka_init ;
 int eap_aka_init_for_reauth ;
 int eap_aka_isKeyAvailable ;
 int eap_aka_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_aka_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_AKA, "AKA");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_aka_init;
 eap->deinit = eap_aka_deinit;
 eap->process = eap_aka_process;
 eap->isKeyAvailable = eap_aka_isKeyAvailable;
 eap->getKey = eap_aka_getKey;
 eap->getSessionId = eap_aka_get_session_id;
 eap->has_reauth_data = eap_aka_has_reauth_data;
 eap->deinit_for_reauth = eap_aka_deinit_for_reauth;
 eap->init_for_reauth = eap_aka_init_for_reauth;
 eap->get_identity = eap_aka_get_identity;
 eap->get_emsk = eap_aka_get_emsk;
 eap->get_error_code = eap_aka_get_error_code;

 return eap_peer_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int get_status; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TTLS ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_ttls_deinit ;
 int eap_ttls_deinit_for_reauth ;
 int eap_ttls_getKey ;
 int eap_ttls_get_emsk ;
 int eap_ttls_get_session_id ;
 int eap_ttls_get_status ;
 int eap_ttls_has_reauth_data ;
 int eap_ttls_init ;
 int eap_ttls_init_for_reauth ;
 int eap_ttls_isKeyAvailable ;
 int eap_ttls_process ;

int eap_peer_ttls_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_TTLS, "TTLS");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_ttls_init;
 eap->deinit = eap_ttls_deinit;
 eap->process = eap_ttls_process;
 eap->isKeyAvailable = eap_ttls_isKeyAvailable;
 eap->getKey = eap_ttls_getKey;
 eap->getSessionId = eap_ttls_get_session_id;
 eap->get_status = eap_ttls_get_status;
 eap->has_reauth_data = eap_ttls_has_reauth_data;
 eap->deinit_for_reauth = eap_ttls_deinit_for_reauth;
 eap->init_for_reauth = eap_ttls_init_for_reauth;
 eap->get_emsk = eap_ttls_get_emsk;

 return eap_peer_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int init_for_reauth; int deinit_for_reauth; int has_reauth_data; int get_status; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TLS ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_tls_deinit ;
 int eap_tls_deinit_for_reauth ;
 int eap_tls_getKey ;
 int eap_tls_get_emsk ;
 int eap_tls_get_session_id ;
 int eap_tls_get_status ;
 int eap_tls_has_reauth_data ;
 int eap_tls_init ;
 int eap_tls_init_for_reauth ;
 int eap_tls_isKeyAvailable ;
 int eap_tls_process ;

int eap_peer_tls_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_TLS, "TLS");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_tls_init;
 eap->deinit = eap_tls_deinit;
 eap->process = eap_tls_process;
 eap->isKeyAvailable = eap_tls_isKeyAvailable;
 eap->getKey = eap_tls_getKey;
 eap->getSessionId = eap_tls_get_session_id;
 eap->get_status = eap_tls_get_status;
 eap->has_reauth_data = eap_tls_has_reauth_data;
 eap->deinit_for_reauth = eap_tls_deinit_for_reauth;
 eap->init_for_reauth = eap_tls_init_for_reauth;
 eap->get_emsk = eap_tls_get_emsk;

 return eap_peer_method_register(eap);
}

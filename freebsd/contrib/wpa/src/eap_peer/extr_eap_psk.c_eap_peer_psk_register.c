
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_psk_deinit ;
 int eap_psk_getKey ;
 int eap_psk_get_emsk ;
 int eap_psk_get_session_id ;
 int eap_psk_init ;
 int eap_psk_isKeyAvailable ;
 int eap_psk_process ;

int eap_peer_psk_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_PSK, "PSK");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_psk_init;
 eap->deinit = eap_psk_deinit;
 eap->process = eap_psk_process;
 eap->isKeyAvailable = eap_psk_isKeyAvailable;
 eap->getKey = eap_psk_getKey;
 eap->getSessionId = eap_psk_get_session_id;
 eap->get_emsk = eap_psk_get_emsk;

 return eap_peer_method_register(eap);
}

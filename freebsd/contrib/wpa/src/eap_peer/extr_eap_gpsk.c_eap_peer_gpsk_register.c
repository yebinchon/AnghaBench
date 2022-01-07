
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int eap_gpsk_deinit ;
 int eap_gpsk_getKey ;
 int eap_gpsk_get_emsk ;
 int eap_gpsk_get_session_id ;
 int eap_gpsk_init ;
 int eap_gpsk_isKeyAvailable ;
 int eap_gpsk_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_gpsk_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_GPSK, "GPSK");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_gpsk_init;
 eap->deinit = eap_gpsk_deinit;
 eap->process = eap_gpsk_process;
 eap->isKeyAvailable = eap_gpsk_isKeyAvailable;
 eap->getKey = eap_gpsk_getKey;
 eap->get_emsk = eap_gpsk_get_emsk;
 eap->getSessionId = eap_gpsk_get_session_id;

 return eap_peer_method_register(eap);
}

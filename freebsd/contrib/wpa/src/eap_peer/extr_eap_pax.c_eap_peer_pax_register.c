
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PAX ;
 int EAP_VENDOR_IETF ;
 int eap_pax_deinit ;
 int eap_pax_getKey ;
 int eap_pax_get_emsk ;
 int eap_pax_get_session_id ;
 int eap_pax_init ;
 int eap_pax_isKeyAvailable ;
 int eap_pax_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_pax_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_PAX, "PAX");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_pax_init;
 eap->deinit = eap_pax_deinit;
 eap->process = eap_pax_process;
 eap->isKeyAvailable = eap_pax_isKeyAvailable;
 eap->getKey = eap_pax_getKey;
 eap->get_emsk = eap_pax_get_emsk;
 eap->getSessionId = eap_pax_get_session_id;

 return eap_peer_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_SAKE ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_sake_deinit ;
 int eap_sake_getKey ;
 int eap_sake_get_emsk ;
 int eap_sake_get_session_id ;
 int eap_sake_init ;
 int eap_sake_isKeyAvailable ;
 int eap_sake_process ;

int eap_peer_sake_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_SAKE, "SAKE");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_sake_init;
 eap->deinit = eap_sake_deinit;
 eap->process = eap_sake_process;
 eap->isKeyAvailable = eap_sake_isKeyAvailable;
 eap->getKey = eap_sake_getKey;
 eap->getSessionId = eap_sake_get_session_id;
 eap->get_emsk = eap_sake_get_emsk;

 return eap_peer_method_register(eap);
}

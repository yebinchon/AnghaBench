
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int getSessionId; int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_pwd_deinit ;
 int eap_pwd_get_emsk ;
 int eap_pwd_get_session_id ;
 int eap_pwd_getkey ;
 int eap_pwd_init ;
 int eap_pwd_key_available ;
 int eap_pwd_process ;

int eap_peer_pwd_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_PWD, "PWD");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_pwd_init;
 eap->deinit = eap_pwd_deinit;
 eap->process = eap_pwd_process;
 eap->isKeyAvailable = eap_pwd_key_available;
 eap->getKey = eap_pwd_getkey;
 eap->getSessionId = eap_pwd_get_session_id;
 eap->get_emsk = eap_pwd_get_emsk;

 return eap_peer_method_register(eap);
}

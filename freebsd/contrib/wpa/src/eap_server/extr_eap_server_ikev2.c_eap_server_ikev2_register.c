
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_IKEV2 ;
 int EAP_VENDOR_IETF ;
 int eap_ikev2_buildReq ;
 int eap_ikev2_check ;
 int eap_ikev2_getKey ;
 int eap_ikev2_get_emsk ;
 int eap_ikev2_get_session_id ;
 int eap_ikev2_init ;
 int eap_ikev2_isDone ;
 int eap_ikev2_isSuccess ;
 int eap_ikev2_process ;
 int eap_ikev2_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_ikev2_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_IKEV2,
          "IKEV2");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_ikev2_init;
 eap->reset = eap_ikev2_reset;
 eap->buildReq = eap_ikev2_buildReq;
 eap->check = eap_ikev2_check;
 eap->process = eap_ikev2_process;
 eap->isDone = eap_ikev2_isDone;
 eap->getKey = eap_ikev2_getKey;
 eap->isSuccess = eap_ikev2_isSuccess;
 eap->get_emsk = eap_ikev2_get_emsk;
 eap->getSessionId = eap_ikev2_get_session_id;

 return eap_server_method_register(eap);
}

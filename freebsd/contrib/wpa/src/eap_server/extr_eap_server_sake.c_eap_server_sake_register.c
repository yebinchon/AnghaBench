
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_SAKE ;
 int EAP_VENDOR_IETF ;
 int eap_sake_buildReq ;
 int eap_sake_check ;
 int eap_sake_getKey ;
 int eap_sake_get_emsk ;
 int eap_sake_get_session_id ;
 int eap_sake_init ;
 int eap_sake_isDone ;
 int eap_sake_isSuccess ;
 int eap_sake_process ;
 int eap_sake_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_sake_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_SAKE, "SAKE");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_sake_init;
 eap->reset = eap_sake_reset;
 eap->buildReq = eap_sake_buildReq;
 eap->check = eap_sake_check;
 eap->process = eap_sake_process;
 eap->isDone = eap_sake_isDone;
 eap->getKey = eap_sake_getKey;
 eap->isSuccess = eap_sake_isSuccess;
 eap->get_emsk = eap_sake_get_emsk;
 eap->getSessionId = eap_sake_get_session_id;

 return eap_server_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int isSuccess; int get_emsk; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_FAST ;
 int EAP_VENDOR_IETF ;
 int eap_fast_buildReq ;
 int eap_fast_check ;
 int eap_fast_getKey ;
 int eap_fast_get_emsk ;
 int eap_fast_get_session_id ;
 int eap_fast_init ;
 int eap_fast_isDone ;
 int eap_fast_isSuccess ;
 int eap_fast_process ;
 int eap_fast_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_fast_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_FAST, "FAST");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_fast_init;
 eap->reset = eap_fast_reset;
 eap->buildReq = eap_fast_buildReq;
 eap->check = eap_fast_check;
 eap->process = eap_fast_process;
 eap->isDone = eap_fast_isDone;
 eap->getKey = eap_fast_getKey;
 eap->get_emsk = eap_fast_get_emsk;
 eap->isSuccess = eap_fast_isSuccess;
 eap->getSessionId = eap_fast_get_session_id;

 return eap_server_method_register(eap);
}

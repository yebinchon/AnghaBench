
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int isSuccess; int get_emsk; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TEAP ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_teap_buildReq ;
 int eap_teap_check ;
 int eap_teap_getKey ;
 int eap_teap_get_emsk ;
 int eap_teap_get_session_id ;
 int eap_teap_init ;
 int eap_teap_isDone ;
 int eap_teap_isSuccess ;
 int eap_teap_process ;
 int eap_teap_reset ;

int eap_server_teap_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_TEAP, "TEAP");
 if (!eap)
  return -1;

 eap->init = eap_teap_init;
 eap->reset = eap_teap_reset;
 eap->buildReq = eap_teap_buildReq;
 eap->check = eap_teap_check;
 eap->process = eap_teap_process;
 eap->isDone = eap_teap_isDone;
 eap->getKey = eap_teap_getKey;
 eap->get_emsk = eap_teap_get_emsk;
 eap->isSuccess = eap_teap_isSuccess;
 eap->getSessionId = eap_teap_get_session_id;

 return eap_server_method_register(eap);
}

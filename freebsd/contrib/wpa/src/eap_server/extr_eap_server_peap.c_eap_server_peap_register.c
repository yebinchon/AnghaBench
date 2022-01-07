
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int isSuccess; int get_emsk; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PEAP ;
 int EAP_VENDOR_IETF ;
 int eap_peap_buildReq ;
 int eap_peap_check ;
 int eap_peap_getKey ;
 int eap_peap_get_emsk ;
 int eap_peap_get_session_id ;
 int eap_peap_init ;
 int eap_peap_isDone ;
 int eap_peap_isSuccess ;
 int eap_peap_process ;
 int eap_peap_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_peap_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_PEAP, "PEAP");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_peap_init;
 eap->reset = eap_peap_reset;
 eap->buildReq = eap_peap_buildReq;
 eap->check = eap_peap_check;
 eap->process = eap_peap_process;
 eap->isDone = eap_peap_isDone;
 eap->getKey = eap_peap_getKey;
 eap->get_emsk = eap_peap_get_emsk;
 eap->isSuccess = eap_peap_isSuccess;
 eap->getSessionId = eap_peap_get_session_id;

 return eap_server_method_register(eap);
}

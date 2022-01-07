
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int eap_gpsk_buildReq ;
 int eap_gpsk_check ;
 int eap_gpsk_getKey ;
 int eap_gpsk_get_emsk ;
 int eap_gpsk_get_session_id ;
 int eap_gpsk_init ;
 int eap_gpsk_isDone ;
 int eap_gpsk_isSuccess ;
 int eap_gpsk_process ;
 int eap_gpsk_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_gpsk_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_GPSK, "GPSK");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_gpsk_init;
 eap->reset = eap_gpsk_reset;
 eap->buildReq = eap_gpsk_buildReq;
 eap->check = eap_gpsk_check;
 eap->process = eap_gpsk_process;
 eap->isDone = eap_gpsk_isDone;
 eap->getKey = eap_gpsk_getKey;
 eap->isSuccess = eap_gpsk_isSuccess;
 eap->get_emsk = eap_gpsk_get_emsk;
 eap->getSessionId = eap_gpsk_get_session_id;

 return eap_server_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_AKA ;
 int EAP_VENDOR_IETF ;
 int eap_aka_buildReq ;
 int eap_aka_check ;
 int eap_aka_getKey ;
 int eap_aka_get_emsk ;
 int eap_aka_get_session_id ;
 int eap_aka_init ;
 int eap_aka_isDone ;
 int eap_aka_isSuccess ;
 int eap_aka_process ;
 int eap_aka_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_aka_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_AKA, "AKA");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_aka_init;
 eap->reset = eap_aka_reset;
 eap->buildReq = eap_aka_buildReq;
 eap->check = eap_aka_check;
 eap->process = eap_aka_process;
 eap->isDone = eap_aka_isDone;
 eap->getKey = eap_aka_getKey;
 eap->isSuccess = eap_aka_isSuccess;
 eap->get_emsk = eap_aka_get_emsk;
 eap->getSessionId = eap_aka_get_session_id;

 return eap_server_method_register(eap);
}

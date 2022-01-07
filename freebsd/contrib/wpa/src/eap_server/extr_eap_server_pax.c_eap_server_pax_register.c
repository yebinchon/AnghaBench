
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PAX ;
 int EAP_VENDOR_IETF ;
 int eap_pax_buildReq ;
 int eap_pax_check ;
 int eap_pax_getKey ;
 int eap_pax_get_emsk ;
 int eap_pax_get_session_id ;
 int eap_pax_init ;
 int eap_pax_isDone ;
 int eap_pax_isSuccess ;
 int eap_pax_process ;
 int eap_pax_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_pax_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_PAX, "PAX");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_pax_init;
 eap->reset = eap_pax_reset;
 eap->buildReq = eap_pax_buildReq;
 eap->check = eap_pax_check;
 eap->process = eap_pax_process;
 eap->isDone = eap_pax_isDone;
 eap->getKey = eap_pax_getKey;
 eap->isSuccess = eap_pax_isSuccess;
 eap->get_emsk = eap_pax_get_emsk;
 eap->getSessionId = eap_pax_get_session_id;

 return eap_server_method_register(eap);
}

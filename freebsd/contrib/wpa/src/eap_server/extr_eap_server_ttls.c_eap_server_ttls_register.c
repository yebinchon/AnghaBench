
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int get_emsk; int getSessionId; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TTLS ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_ttls_buildReq ;
 int eap_ttls_check ;
 int eap_ttls_getKey ;
 int eap_ttls_get_emsk ;
 int eap_ttls_get_session_id ;
 int eap_ttls_init ;
 int eap_ttls_isDone ;
 int eap_ttls_isSuccess ;
 int eap_ttls_process ;
 int eap_ttls_reset ;

int eap_server_ttls_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_TTLS, "TTLS");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_ttls_init;
 eap->reset = eap_ttls_reset;
 eap->buildReq = eap_ttls_buildReq;
 eap->check = eap_ttls_check;
 eap->process = eap_ttls_process;
 eap->isDone = eap_ttls_isDone;
 eap->getKey = eap_ttls_getKey;
 eap->isSuccess = eap_ttls_isSuccess;
 eap->getSessionId = eap_ttls_get_session_id;
 eap->get_emsk = eap_ttls_get_emsk;

 return eap_server_method_register(eap);
}

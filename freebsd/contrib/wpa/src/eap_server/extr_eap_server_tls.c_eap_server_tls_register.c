
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TLS ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_tls_buildReq ;
 int eap_tls_check ;
 int eap_tls_getKey ;
 int eap_tls_get_emsk ;
 int eap_tls_get_session_id ;
 int eap_tls_init ;
 int eap_tls_isDone ;
 int eap_tls_isSuccess ;
 int eap_tls_process ;
 int eap_tls_reset ;

int eap_server_tls_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_TLS, "TLS");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_tls_init;
 eap->reset = eap_tls_reset;
 eap->buildReq = eap_tls_buildReq;
 eap->check = eap_tls_check;
 eap->process = eap_tls_process;
 eap->isDone = eap_tls_isDone;
 eap->getKey = eap_tls_getKey;
 eap->isSuccess = eap_tls_isSuccess;
 eap->get_emsk = eap_tls_get_emsk;
 eap->getSessionId = eap_tls_get_session_id;

 return eap_server_method_register(eap);
}

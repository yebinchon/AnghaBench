
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_EKE ;
 int EAP_VENDOR_IETF ;
 int eap_eke_buildReq ;
 int eap_eke_check ;
 int eap_eke_getKey ;
 int eap_eke_get_emsk ;
 int eap_eke_get_session_id ;
 int eap_eke_init ;
 int eap_eke_isDone ;
 int eap_eke_isSuccess ;
 int eap_eke_process ;
 int eap_eke_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_eke_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_EKE, "EKE");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_eke_init;
 eap->reset = eap_eke_reset;
 eap->buildReq = eap_eke_buildReq;
 eap->check = eap_eke_check;
 eap->process = eap_eke_process;
 eap->isDone = eap_eke_isDone;
 eap->getKey = eap_eke_getKey;
 eap->isSuccess = eap_eke_isSuccess;
 eap->get_emsk = eap_eke_get_emsk;
 eap->getSessionId = eap_eke_get_session_id;

 return eap_server_method_register(eap);
}

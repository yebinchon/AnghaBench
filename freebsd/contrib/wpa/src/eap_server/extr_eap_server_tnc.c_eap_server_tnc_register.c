
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_tnc_buildReq ;
 int eap_tnc_check ;
 int eap_tnc_init ;
 int eap_tnc_isDone ;
 int eap_tnc_isSuccess ;
 int eap_tnc_process ;
 int eap_tnc_reset ;

int eap_server_tnc_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_TNC, "TNC");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_tnc_init;
 eap->reset = eap_tnc_reset;
 eap->buildReq = eap_tnc_buildReq;
 eap->check = eap_tnc_check;
 eap->process = eap_tnc_process;
 eap->isDone = eap_tnc_isDone;
 eap->isSuccess = eap_tnc_isSuccess;

 return eap_server_method_register(eap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getTimeout; int isSuccess; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_wsc_buildReq ;
 int eap_wsc_check ;
 int eap_wsc_getTimeout ;
 int eap_wsc_init ;
 int eap_wsc_isDone ;
 int eap_wsc_isSuccess ;
 int eap_wsc_process ;
 int eap_wsc_reset ;

int eap_server_wsc_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC,
          "WSC");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_wsc_init;
 eap->reset = eap_wsc_reset;
 eap->buildReq = eap_wsc_buildReq;
 eap->check = eap_wsc_check;
 eap->process = eap_wsc_process;
 eap->isDone = eap_wsc_isDone;
 eap->isSuccess = eap_wsc_isSuccess;
 eap->getTimeout = eap_wsc_getTimeout;

 return eap_server_method_register(eap);
}

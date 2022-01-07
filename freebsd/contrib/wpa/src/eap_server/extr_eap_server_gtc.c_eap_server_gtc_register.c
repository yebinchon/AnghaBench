
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_GTC ;
 int EAP_VENDOR_IETF ;
 int eap_gtc_buildReq ;
 int eap_gtc_check ;
 int eap_gtc_init ;
 int eap_gtc_isDone ;
 int eap_gtc_isSuccess ;
 int eap_gtc_process ;
 int eap_gtc_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_gtc_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_GTC, "GTC");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_gtc_init;
 eap->reset = eap_gtc_reset;
 eap->buildReq = eap_gtc_buildReq;
 eap->check = eap_gtc_check;
 eap->process = eap_gtc_process;
 eap->isDone = eap_gtc_isDone;
 eap->isSuccess = eap_gtc_isSuccess;

 return eap_server_method_register(eap);
}

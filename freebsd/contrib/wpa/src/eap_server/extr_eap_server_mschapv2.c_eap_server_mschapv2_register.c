
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 int eap_mschapv2_buildReq ;
 int eap_mschapv2_check ;
 int eap_mschapv2_getKey ;
 int eap_mschapv2_init ;
 int eap_mschapv2_isDone ;
 int eap_mschapv2_isSuccess ;
 int eap_mschapv2_process ;
 int eap_mschapv2_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_mschapv2_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2,
          "MSCHAPV2");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_mschapv2_init;
 eap->reset = eap_mschapv2_reset;
 eap->buildReq = eap_mschapv2_buildReq;
 eap->check = eap_mschapv2_check;
 eap->process = eap_mschapv2_process;
 eap->isDone = eap_mschapv2_isDone;
 eap->getKey = eap_mschapv2_getKey;
 eap->isSuccess = eap_mschapv2_isSuccess;

 return eap_server_method_register(eap);
}

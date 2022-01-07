
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_VENDOR_ID ;
 int EAP_VENDOR_TYPE ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_vendor_test_buildReq ;
 int eap_vendor_test_check ;
 int eap_vendor_test_getKey ;
 int eap_vendor_test_init ;
 int eap_vendor_test_isDone ;
 int eap_vendor_test_isSuccess ;
 int eap_vendor_test_process ;
 int eap_vendor_test_reset ;

int eap_server_vendor_test_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_ID, EAP_VENDOR_TYPE,
          "VENDOR-TEST");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_vendor_test_init;
 eap->reset = eap_vendor_test_reset;
 eap->buildReq = eap_vendor_test_buildReq;
 eap->check = eap_vendor_test_check;
 eap->process = eap_vendor_test_process;
 eap->isDone = eap_vendor_test_isDone;
 eap->getKey = eap_vendor_test_getKey;
 eap->isSuccess = eap_vendor_test_isSuccess;

 return eap_server_method_register(eap);
}

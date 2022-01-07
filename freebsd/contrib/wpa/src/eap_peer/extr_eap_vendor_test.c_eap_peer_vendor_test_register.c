
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_VENDOR_ID ;
 int EAP_VENDOR_TYPE ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_vendor_test_deinit ;
 int eap_vendor_test_getKey ;
 int eap_vendor_test_init ;
 int eap_vendor_test_isKeyAvailable ;
 int eap_vendor_test_process ;

int eap_peer_vendor_test_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_ID, EAP_VENDOR_TYPE,
        "VENDOR-TEST");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_vendor_test_init;
 eap->deinit = eap_vendor_test_deinit;
 eap->process = eap_vendor_test_process;
 eap->isKeyAvailable = eap_vendor_test_isKeyAvailable;
 eap->getKey = eap_vendor_test_getKey;

 return eap_peer_method_register(eap);
}

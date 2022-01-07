
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getKey; int isKeyAvailable; int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_LEAP ;
 int EAP_VENDOR_IETF ;
 int eap_leap_deinit ;
 int eap_leap_getKey ;
 int eap_leap_init ;
 int eap_leap_isKeyAvailable ;
 int eap_leap_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_leap_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_LEAP, "LEAP");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_leap_init;
 eap->deinit = eap_leap_deinit;
 eap->process = eap_leap_process;
 eap->isKeyAvailable = eap_leap_isKeyAvailable;
 eap->getKey = eap_leap_getKey;

 return eap_peer_method_register(eap);
}

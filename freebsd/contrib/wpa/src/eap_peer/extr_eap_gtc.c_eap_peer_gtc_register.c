
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_GTC ;
 int EAP_VENDOR_IETF ;
 int eap_gtc_deinit ;
 int eap_gtc_init ;
 int eap_gtc_process ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;

int eap_peer_gtc_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_IETF, EAP_TYPE_GTC, "GTC");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_gtc_init;
 eap->deinit = eap_gtc_deinit;
 eap->process = eap_gtc_process;

 return eap_peer_method_register(eap);
}

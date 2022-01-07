
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int process; int deinit; int init; } ;


 int EAP_PEER_METHOD_INTERFACE_VERSION ;
 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 struct eap_method* eap_peer_method_alloc (int ,int ,int ,char*) ;
 int eap_peer_method_register (struct eap_method*) ;
 int eap_wsc_deinit ;
 int eap_wsc_init ;
 int eap_wsc_process ;

int eap_peer_wsc_register(void)
{
 struct eap_method *eap;

 eap = eap_peer_method_alloc(EAP_PEER_METHOD_INTERFACE_VERSION,
        EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC,
        "WSC");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_wsc_init;
 eap->deinit = eap_wsc_deinit;
 eap->process = eap_wsc_process;

 return eap_peer_method_register(eap);
}

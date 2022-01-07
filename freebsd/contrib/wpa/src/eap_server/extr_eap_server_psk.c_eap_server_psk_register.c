
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 int eap_psk_buildReq ;
 int eap_psk_check ;
 int eap_psk_getKey ;
 int eap_psk_get_emsk ;
 int eap_psk_get_session_id ;
 int eap_psk_init ;
 int eap_psk_isDone ;
 int eap_psk_isSuccess ;
 int eap_psk_process ;
 int eap_psk_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_psk_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_PSK, "PSK");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_psk_init;
 eap->reset = eap_psk_reset;
 eap->buildReq = eap_psk_buildReq;
 eap->check = eap_psk_check;
 eap->process = eap_psk_process;
 eap->isDone = eap_psk_isDone;
 eap->getKey = eap_psk_getKey;
 eap->isSuccess = eap_psk_isSuccess;
 eap->get_emsk = eap_psk_get_emsk;
 eap->getSessionId = eap_psk_get_session_id;

 return eap_server_method_register(eap);
}

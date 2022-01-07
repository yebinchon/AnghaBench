
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int isDone; int process; int check; int buildReq; int reset; int initPickUp; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_IDENTITY ;
 int EAP_VENDOR_IETF ;
 int eap_identity_buildReq ;
 int eap_identity_check ;
 int eap_identity_init ;
 int eap_identity_initPickUp ;
 int eap_identity_isDone ;
 int eap_identity_isSuccess ;
 int eap_identity_process ;
 int eap_identity_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_identity_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_IDENTITY,
          "Identity");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_identity_init;
 eap->initPickUp = eap_identity_initPickUp;
 eap->reset = eap_identity_reset;
 eap->buildReq = eap_identity_buildReq;
 eap->check = eap_identity_check;
 eap->process = eap_identity_process;
 eap->isDone = eap_identity_isDone;
 eap->isSuccess = eap_identity_isSuccess;

 return eap_server_method_register(eap);
}

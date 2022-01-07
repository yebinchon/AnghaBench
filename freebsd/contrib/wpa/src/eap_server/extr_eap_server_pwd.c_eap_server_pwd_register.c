
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int isSuccess; int get_emsk; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 int eap_pwd_build_req ;
 int eap_pwd_check ;
 int eap_pwd_get_emsk ;
 int eap_pwd_get_session_id ;
 int eap_pwd_getkey ;
 int eap_pwd_init ;
 int eap_pwd_is_done ;
 int eap_pwd_is_success ;
 int eap_pwd_process ;
 int eap_pwd_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_pwd_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_PWD,
          "PWD");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_pwd_init;
 eap->reset = eap_pwd_reset;
 eap->buildReq = eap_pwd_build_req;
 eap->check = eap_pwd_check;
 eap->process = eap_pwd_process;
 eap->isDone = eap_pwd_is_done;
 eap->getKey = eap_pwd_getkey;
 eap->get_emsk = eap_pwd_get_emsk;
 eap->isSuccess = eap_pwd_is_success;
 eap->getSessionId = eap_pwd_get_session_id;

 return eap_server_method_register(eap);
}

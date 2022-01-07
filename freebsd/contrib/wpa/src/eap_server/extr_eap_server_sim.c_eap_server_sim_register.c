
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int getSessionId; int get_emsk; int isSuccess; int getKey; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_SIM ;
 int EAP_VENDOR_IETF ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;
 int eap_sim_buildReq ;
 int eap_sim_check ;
 int eap_sim_getKey ;
 int eap_sim_get_emsk ;
 int eap_sim_get_session_id ;
 int eap_sim_init ;
 int eap_sim_isDone ;
 int eap_sim_isSuccess ;
 int eap_sim_process ;
 int eap_sim_reset ;

int eap_server_sim_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_SIM, "SIM");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_sim_init;
 eap->reset = eap_sim_reset;
 eap->buildReq = eap_sim_buildReq;
 eap->check = eap_sim_check;
 eap->process = eap_sim_process;
 eap->isDone = eap_sim_isDone;
 eap->getKey = eap_sim_getKey;
 eap->isSuccess = eap_sim_isSuccess;
 eap->get_emsk = eap_sim_get_emsk;
 eap->getSessionId = eap_sim_get_session_id;

 return eap_server_method_register(eap);
}

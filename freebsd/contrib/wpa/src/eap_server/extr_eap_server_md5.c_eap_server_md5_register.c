
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int isSuccess; int isDone; int process; int check; int buildReq; int reset; int init; } ;


 int EAP_SERVER_METHOD_INTERFACE_VERSION ;
 int EAP_TYPE_MD5 ;
 int EAP_VENDOR_IETF ;
 int eap_md5_buildReq ;
 int eap_md5_check ;
 int eap_md5_init ;
 int eap_md5_isDone ;
 int eap_md5_isSuccess ;
 int eap_md5_process ;
 int eap_md5_reset ;
 struct eap_method* eap_server_method_alloc (int ,int ,int ,char*) ;
 int eap_server_method_register (struct eap_method*) ;

int eap_server_md5_register(void)
{
 struct eap_method *eap;

 eap = eap_server_method_alloc(EAP_SERVER_METHOD_INTERFACE_VERSION,
          EAP_VENDOR_IETF, EAP_TYPE_MD5, "MD5");
 if (eap == ((void*)0))
  return -1;

 eap->init = eap_md5_init;
 eap->reset = eap_md5_reset;
 eap->buildReq = eap_md5_buildReq;
 eap->check = eap_md5_check;
 eap->process = eap_md5_process;
 eap->isDone = eap_md5_isDone;
 eap->isSuccess = eap_md5_isSuccess;

 return eap_server_method_register(eap);
}

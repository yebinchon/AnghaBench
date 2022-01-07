
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int MSG_INFO ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 int eap_sm_request_identity (struct eap_sm*) ;
 int eap_sm_request_password (struct eap_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_mschapv2_check_config(struct eap_sm *sm)
{
 size_t len;

 if (eap_get_config_identity(sm, &len) == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Identity not configured");
  eap_sm_request_identity(sm);
  return -1;
 }

 if (eap_get_config_password(sm, &len) == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Password not configured");
  eap_sm_request_password(sm);
  return -1;
 }

 return 0;
}

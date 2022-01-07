
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_passphrase; scalar_t__ pending_req_pin; scalar_t__ pending_req_otp; scalar_t__ pending_req_new_password; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;


 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_sm_request_identity (struct eap_sm*) ;
 int eap_sm_request_new_password (struct eap_sm*) ;
 int eap_sm_request_otp (struct eap_sm*,int *,int ) ;
 int eap_sm_request_passphrase (struct eap_sm*) ;
 int eap_sm_request_password (struct eap_sm*) ;
 int eap_sm_request_pin (struct eap_sm*) ;

void eap_sm_notify_ctrl_attached(struct eap_sm *sm)
{
 struct eap_peer_config *config = eap_get_config(sm);

 if (config == ((void*)0))
  return;





 if (config->pending_req_identity)
  eap_sm_request_identity(sm);
 if (config->pending_req_password)
  eap_sm_request_password(sm);
 if (config->pending_req_new_password)
  eap_sm_request_new_password(sm);
 if (config->pending_req_otp)
  eap_sm_request_otp(sm, ((void*)0), 0);
 if (config->pending_req_pin)
  eap_sm_request_pin(sm);
 if (config->pending_req_passphrase)
  eap_sm_request_passphrase(sm);
}

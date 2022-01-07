
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct eap_peer_config {char* pending_req_otp; size_t pending_req_otp_len; int pending_req_sim; int pending_req_passphrase; int pending_req_pin; int pending_req_new_password; int pending_req_password; int pending_req_identity; } ;
typedef enum wpa_ctrl_req_type { ____Placeholder_wpa_ctrl_req_type } wpa_ctrl_req_type ;
struct TYPE_2__ {int (* eap_param_needed ) (int ,int,char const*) ;} ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 int stub1 (int ,int,char const*) ;

__attribute__((used)) static void eap_sm_request(struct eap_sm *sm, enum wpa_ctrl_req_type field,
      const char *msg, size_t msglen)
{

 struct eap_peer_config *config;
 const char *txt = ((void*)0);
 char *tmp;

 if (sm == ((void*)0))
  return;
 config = eap_get_config(sm);
 if (config == ((void*)0))
  return;

 switch (field) {
 case 135:
  config->pending_req_identity++;
  break;
 case 131:
  config->pending_req_password++;
  break;
 case 134:
  config->pending_req_new_password++;
  break;
 case 130:
  config->pending_req_pin++;
  break;
 case 133:
  if (msg) {
   tmp = os_malloc(msglen + 3);
   if (tmp == ((void*)0))
    return;
   tmp[0] = '[';
   os_memcpy(tmp + 1, msg, msglen);
   tmp[msglen + 1] = ']';
   tmp[msglen + 2] = '\0';
   txt = tmp;
   os_free(config->pending_req_otp);
   config->pending_req_otp = tmp;
   config->pending_req_otp_len = msglen + 3;
  } else {
   if (config->pending_req_otp == ((void*)0))
    return;
   txt = config->pending_req_otp;
  }
  break;
 case 132:
  config->pending_req_passphrase++;
  break;
 case 128:
  config->pending_req_sim++;
  txt = msg;
  break;
 case 129:
  break;
 default:
  return;
 }

 if (sm->eapol_cb->eap_param_needed)
  sm->eapol_cb->eap_param_needed(sm->eapol_ctx, field, txt);

}

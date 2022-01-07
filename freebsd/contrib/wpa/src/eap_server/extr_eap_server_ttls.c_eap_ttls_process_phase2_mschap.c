
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {TYPE_1__* user; int identity_len; int identity; } ;
struct TYPE_2__ {int ttls_auth; int password_len; int password; scalar_t__ password_hash; } ;


 int EAP_TTLS_AUTH_MSCHAP ;
 size_t EAP_TTLS_MSCHAP_CHALLENGE_LEN ;
 size_t EAP_TTLS_MSCHAP_RESPONSE_LEN ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SUCCESS ;
 scalar_t__ challenge_response (scalar_t__*,int ,scalar_t__*) ;
 int eap_server_mschap_rx_callback (struct eap_sm*,char*,int ,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__* eap_ttls_implicit_challenge (struct eap_sm*,struct eap_ttls_data*,size_t) ;
 int eap_ttls_state (struct eap_ttls_data*,int ) ;
 int eap_ttls_valid_session (struct eap_sm*,struct eap_ttls_data*) ;
 scalar_t__ nt_challenge_response (scalar_t__*,int ,int ,scalar_t__*) ;
 int os_free (scalar_t__*) ;
 scalar_t__ os_memcmp_const (scalar_t__*,scalar_t__*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_ttls_process_phase2_mschap(struct eap_sm *sm,
        struct eap_ttls_data *data,
        u8 *challenge, size_t challenge_len,
        u8 *response, size_t response_len)
{
 u8 *chal, nt_response[24];

 if (challenge == ((void*)0) || response == ((void*)0) ||
     challenge_len != EAP_TTLS_MSCHAP_CHALLENGE_LEN ||
     response_len != EAP_TTLS_MSCHAP_RESPONSE_LEN) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: Invalid MS-CHAP "
      "attributes (challenge len %lu response len %lu)",
      (unsigned long) challenge_len,
      (unsigned long) response_len);
  eap_ttls_state(data, FAILURE);
  return;
 }

 if (!sm->user || !sm->user->password ||
     !(sm->user->ttls_auth & EAP_TTLS_AUTH_MSCHAP)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: No user password "
      "configured");
  eap_ttls_state(data, FAILURE);
  return;
 }

 chal = eap_ttls_implicit_challenge(sm, data,
        EAP_TTLS_MSCHAP_CHALLENGE_LEN + 1);
 if (chal == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: Failed to generate "
      "challenge from TLS data");
  eap_ttls_state(data, FAILURE);
  return;
 }







 if (os_memcmp_const(challenge, chal, EAP_TTLS_MSCHAP_CHALLENGE_LEN)
     != 0 ||
     response[0] != chal[EAP_TTLS_MSCHAP_CHALLENGE_LEN]) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: Challenge mismatch");
  os_free(chal);
  eap_ttls_state(data, FAILURE);
  return;
 }
 os_free(chal);

 if ((sm->user->password_hash &&
      challenge_response(challenge, sm->user->password, nt_response)) ||
     (!sm->user->password_hash &&
      nt_challenge_response(challenge, sm->user->password,
       sm->user->password_len, nt_response))) {
  eap_ttls_state(data, FAILURE);
  return;
 }

 if (os_memcmp_const(nt_response, response + 2 + 24, 24) == 0) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: Correct response");
  eap_ttls_state(data, SUCCESS);
  eap_ttls_valid_session(sm, data);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/MSCHAP: Invalid NT-Response");
  wpa_hexdump(MSG_MSGDUMP, "EAP-TTLS/MSCHAP: Received",
       response + 2 + 24, 24);
  wpa_hexdump(MSG_MSGDUMP, "EAP-TTLS/MSCHAP: Expected",
       nt_response, 24);
  eap_ttls_state(data, FAILURE);
 }
}

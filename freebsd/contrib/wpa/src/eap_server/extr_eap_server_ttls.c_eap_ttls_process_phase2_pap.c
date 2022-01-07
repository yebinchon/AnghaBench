
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct TYPE_2__ {int ttls_auth; size_t password_len; int password; scalar_t__ password_hash; } ;


 int EAP_TTLS_AUTH_PAP ;
 int FAILURE ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int eap_ttls_state (struct eap_ttls_data*,int ) ;
 int eap_ttls_valid_session (struct eap_sm*,struct eap_ttls_data*) ;
 scalar_t__ os_memcmp_const (int ,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_ttls_process_phase2_pap(struct eap_sm *sm,
     struct eap_ttls_data *data,
     const u8 *user_password,
     size_t user_password_len)
{
 if (!sm->user || !sm->user->password || sm->user->password_hash ||
     !(sm->user->ttls_auth & EAP_TTLS_AUTH_PAP)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/PAP: No plaintext user "
      "password configured");
  eap_ttls_state(data, FAILURE);
  return;
 }

 if (sm->user->password_len != user_password_len ||
     os_memcmp_const(sm->user->password, user_password,
       user_password_len) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/PAP: Invalid user password");
  eap_ttls_state(data, FAILURE);
  return;
 }

 wpa_printf(MSG_DEBUG, "EAP-TTLS/PAP: Correct user password");
 eap_ttls_state(data, SUCCESS);
 eap_ttls_valid_session(sm, data);
}

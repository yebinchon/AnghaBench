
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {scalar_t__ tnc_started; TYPE_1__ ssl; struct wpabuf* pending_phase2_eap_resp; } ;
struct eap_ttls_avp {int user_name_len; char* eap; int mschap2_response_len; scalar_t__ mschap2_response; int mschap_challenge_len; int mschap_challenge; int mschap_response_len; scalar_t__ mschap_response; int chap_password_len; scalar_t__ chap_password; int chap_challenge_len; int chap_challenge; int user_password_len; scalar_t__ user_password; scalar_t__ eap_len; scalar_t__ user_name; } ;
struct eap_sm {char* identity; int identity_len; int ssl_ctx; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_log_msg (struct eap_sm*,char*,char*) ;
 scalar_t__ eap_ttls_avp_parse (struct wpabuf*,struct eap_ttls_avp*) ;
 int eap_ttls_process_phase2_chap (struct eap_sm*,struct eap_ttls_data*,int ,int ,scalar_t__,int ) ;
 int eap_ttls_process_phase2_eap (struct eap_sm*,struct eap_ttls_data*,char*,scalar_t__) ;
 int eap_ttls_process_phase2_mschap (struct eap_sm*,struct eap_ttls_data*,int ,int ,scalar_t__,int ) ;
 int eap_ttls_process_phase2_mschapv2 (struct eap_sm*,struct eap_ttls_data*,int ,int ,scalar_t__,int ) ;
 int eap_ttls_process_phase2_pap (struct eap_sm*,struct eap_ttls_data*,scalar_t__,int ) ;
 int eap_ttls_state (struct eap_ttls_data*,int ) ;
 scalar_t__ eap_user_get (struct eap_sm*,scalar_t__,int,int) ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 char* os_memdup (scalar_t__,int) ;
 int printf_encode (char*,int,scalar_t__,int) ;
 struct wpabuf* tls_connection_decrypt (int ,int ,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 char* wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void eap_ttls_process_phase2(struct eap_sm *sm,
        struct eap_ttls_data *data,
        struct wpabuf *in_buf)
{
 struct wpabuf *in_decrypted;
 struct eap_ttls_avp parse;

 wpa_printf(MSG_DEBUG, "EAP-TTLS: received %lu bytes encrypted data for"
     " Phase 2", (unsigned long) wpabuf_len(in_buf));

 if (data->pending_phase2_eap_resp) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Pending Phase 2 EAP response "
      "- skip decryption and use old data");
  eap_ttls_process_phase2_eap(
   sm, data, wpabuf_head(data->pending_phase2_eap_resp),
   wpabuf_len(data->pending_phase2_eap_resp));
  wpabuf_free(data->pending_phase2_eap_resp);
  data->pending_phase2_eap_resp = ((void*)0);
  return;
 }

 in_decrypted = tls_connection_decrypt(sm->ssl_ctx, data->ssl.conn,
           in_buf);
 if (in_decrypted == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-TTLS: Failed to decrypt Phase 2 "
      "data");
  eap_ttls_state(data, FAILURE);
  return;
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TTLS: Decrypted Phase 2 EAP",
       in_decrypted);

 if (eap_ttls_avp_parse(in_decrypted, &parse) < 0) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Failed to parse AVPs");
  wpabuf_free(in_decrypted);
  eap_ttls_state(data, FAILURE);
  return;
 }

 if (parse.user_name) {
  char *nbuf;
  nbuf = os_malloc(parse.user_name_len * 4 + 1);
  if (nbuf) {
   printf_encode(nbuf, parse.user_name_len * 4 + 1,
          parse.user_name,
          parse.user_name_len);
   eap_log_msg(sm, "TTLS-User-Name '%s'", nbuf);
   os_free(nbuf);
  }

  os_free(sm->identity);
  sm->identity = os_memdup(parse.user_name, parse.user_name_len);
  if (sm->identity == ((void*)0)) {
   eap_ttls_state(data, FAILURE);
   goto done;
  }
  sm->identity_len = parse.user_name_len;
  if (eap_user_get(sm, parse.user_name, parse.user_name_len, 1)
      != 0) {
   wpa_printf(MSG_DEBUG, "EAP-TTLS: Phase2 Identity not "
       "found in the user database");
   eap_ttls_state(data, FAILURE);
   goto done;
  }
 }
 if (parse.eap) {
  eap_ttls_process_phase2_eap(sm, data, parse.eap,
         parse.eap_len);
 } else if (parse.user_password) {
  eap_ttls_process_phase2_pap(sm, data, parse.user_password,
         parse.user_password_len);
 } else if (parse.chap_password) {
  eap_ttls_process_phase2_chap(sm, data,
          parse.chap_challenge,
          parse.chap_challenge_len,
          parse.chap_password,
          parse.chap_password_len);
 } else if (parse.mschap_response) {
  eap_ttls_process_phase2_mschap(sm, data,
            parse.mschap_challenge,
            parse.mschap_challenge_len,
            parse.mschap_response,
            parse.mschap_response_len);
 } else if (parse.mschap2_response) {
  eap_ttls_process_phase2_mschapv2(sm, data,
       parse.mschap_challenge,
       parse.mschap_challenge_len,
       parse.mschap2_response,
       parse.mschap2_response_len);
 }

done:
 wpabuf_free(in_decrypted);
 os_free(parse.eap);
}

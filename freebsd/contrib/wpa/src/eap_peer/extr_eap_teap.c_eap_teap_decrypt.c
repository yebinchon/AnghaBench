
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct TYPE_4__ {int tls_out; } ;
struct eap_teap_data {TYPE_1__ ssl; scalar_t__ on_tx_completion; int teap_version; struct wpabuf const* pending_phase2_req; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; scalar_t__ methodState; } ;


 int DECISION_UNCOND_SUCC ;
 int EAP_TYPE_TEAP ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int eap_peer_tls_decrypt (struct eap_sm*,TYPE_1__*,struct wpabuf const*,struct wpabuf const**) ;
 int eap_peer_tls_encrypt (struct eap_sm*,TYPE_1__*,int ,int ,int ,int *,struct wpabuf const**) ;
 int eap_peer_tls_reset_input (TYPE_1__*) ;
 int eap_teap_process_decrypted (struct eap_sm*,struct eap_teap_data*,struct eap_method_ret*,int ,struct wpabuf const*,struct wpabuf const**) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int eap_teap_decrypt(struct eap_sm *sm, struct eap_teap_data *data,
       struct eap_method_ret *ret, u8 identifier,
       const struct wpabuf *in_data,
       struct wpabuf **out_data)
{
 struct wpabuf *in_decrypted;
 int res;

 wpa_printf(MSG_DEBUG,
     "EAP-TEAP: Received %lu bytes encrypted data for Phase 2",
     (unsigned long) wpabuf_len(in_data));

 if (data->pending_phase2_req) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Pending Phase 2 request - skip decryption and use old data");

  eap_peer_tls_reset_input(&data->ssl);

  in_decrypted = data->pending_phase2_req;
  data->pending_phase2_req = ((void*)0);
  goto continue_req;
 }

 if (wpabuf_len(in_data) == 0) {

  res = eap_peer_tls_encrypt(sm, &data->ssl, EAP_TYPE_TEAP,
        data->teap_version,
        identifier, ((void*)0), out_data);
  if (res == 0 && !data->ssl.tls_out &&
      data->on_tx_completion) {
   wpa_printf(MSG_DEBUG,
       "EAP-TEAP: Mark authentication completed at full TX of fragments");
   ret->methodState = data->on_tx_completion;
   data->on_tx_completion = 0;
   ret->decision = DECISION_UNCOND_SUCC;
  }
  return res;
 }

 res = eap_peer_tls_decrypt(sm, &data->ssl, in_data, &in_decrypted);
 if (res)
  return res;

continue_req:
 wpa_hexdump_buf(MSG_MSGDUMP, "EAP-TEAP: Decrypted Phase 2 TLV(s)",
   in_decrypted);

 if (wpabuf_len(in_decrypted) < 4) {
  wpa_printf(MSG_INFO,
      "EAP-TEAP: Too short Phase 2 TLV frame (len=%lu)",
      (unsigned long) wpabuf_len(in_decrypted));
  wpabuf_free(in_decrypted);
  return -1;
 }

 res = eap_teap_process_decrypted(sm, data, ret, identifier,
      in_decrypted, out_data);

 wpabuf_free(in_decrypted);

 return res;
}

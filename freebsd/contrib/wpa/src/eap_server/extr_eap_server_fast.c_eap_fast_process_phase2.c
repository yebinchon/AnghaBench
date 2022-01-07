
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ method_pending; int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_fast_data {struct wpabuf* pending_phase2_resp; TYPE_1__ ssl; } ;


 int FAILURE ;
 scalar_t__ METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_fast_process_phase2_tlvs (struct eap_sm*,struct eap_fast_data*,struct wpabuf*) ;
 int eap_fast_state (struct eap_fast_data*,int ) ;
 struct wpabuf* tls_connection_decrypt (int ,int ,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void eap_fast_process_phase2(struct eap_sm *sm,
        struct eap_fast_data *data,
        struct wpabuf *in_buf)
{
 struct wpabuf *in_decrypted;

 wpa_printf(MSG_DEBUG, "EAP-FAST: Received %lu bytes encrypted data for"
     " Phase 2", (unsigned long) wpabuf_len(in_buf));

 if (data->pending_phase2_resp) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Pending Phase 2 response - "
      "skip decryption and use old data");
  eap_fast_process_phase2_tlvs(sm, data,
          data->pending_phase2_resp);
  wpabuf_free(data->pending_phase2_resp);
  data->pending_phase2_resp = ((void*)0);
  return;
 }

 in_decrypted = tls_connection_decrypt(sm->ssl_ctx, data->ssl.conn,
           in_buf);
 if (in_decrypted == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-FAST: Failed to decrypt Phase 2 "
      "data");
  eap_fast_state(data, FAILURE);
  return;
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-FAST: Decrypted Phase 2 TLVs",
       in_decrypted);

 eap_fast_process_phase2_tlvs(sm, data, in_decrypted);

 if (sm->method_pending == METHOD_PENDING_WAIT) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Phase2 method is in "
      "pending wait state - save decrypted response");
  wpabuf_free(data->pending_phase2_resp);
  data->pending_phase2_resp = in_decrypted;
  return;
 }

 wpabuf_free(in_decrypted);
}

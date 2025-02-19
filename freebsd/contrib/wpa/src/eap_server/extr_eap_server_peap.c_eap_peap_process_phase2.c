
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct wpabuf const wpabuf ;
struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int conn; } ;
struct eap_peap_data {scalar_t__ peap_version; scalar_t__ state; TYPE_1__ ssl; struct wpabuf const* pending_phase2_resp; } ;
struct eap_hdr {long code; int identifier; int length; } ;





 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ PHASE2_TLV ;
 int SUCCESS ;
 scalar_t__ SUCCESS_REQ ;
 size_t be_to_host16 (int ) ;
 int eap_peap_process_phase2_response (struct eap_sm*,struct eap_peap_data*,struct wpabuf const*) ;
 int eap_peap_req_failure (struct eap_sm*,struct eap_peap_data*) ;
 int eap_peap_state (struct eap_peap_data*,int ) ;
 int eap_peap_valid_session (struct eap_sm*,struct eap_peap_data*) ;
 int host_to_be16 (size_t) ;
 struct wpabuf const* tls_connection_decrypt (int ,int ,struct wpabuf const*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf const* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf const*) ;
 struct eap_hdr* wpabuf_head (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;
 struct eap_hdr* wpabuf_put (struct wpabuf const*,int) ;
 int wpabuf_put_buf (struct wpabuf const*,struct wpabuf const*) ;

__attribute__((used)) static void eap_peap_process_phase2(struct eap_sm *sm,
        struct eap_peap_data *data,
        const struct wpabuf *respData,
        struct wpabuf *in_buf)
{
 struct wpabuf *in_decrypted;
 const struct eap_hdr *hdr;
 size_t len;

 wpa_printf(MSG_DEBUG, "EAP-PEAP: received %lu bytes encrypted data for"
     " Phase 2", (unsigned long) wpabuf_len(in_buf));

 if (data->pending_phase2_resp) {
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Pending Phase 2 response - "
      "skip decryption and use old data");
  eap_peap_process_phase2_response(sm, data,
       data->pending_phase2_resp);
  wpabuf_free(data->pending_phase2_resp);
  data->pending_phase2_resp = ((void*)0);
  return;
 }

 in_decrypted = tls_connection_decrypt(sm->ssl_ctx, data->ssl.conn,
           in_buf);
 if (in_decrypted == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-PEAP: Failed to decrypt Phase 2 "
      "data");
  eap_peap_state(data, FAILURE);
  return;
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-PEAP: Decrypted Phase 2 EAP",
       in_decrypted);

 if (data->peap_version == 0 && data->state != PHASE2_TLV) {
  const struct eap_hdr *resp;
  struct eap_hdr *nhdr;
  struct wpabuf *nbuf =
   wpabuf_alloc(sizeof(struct eap_hdr) +
         wpabuf_len(in_decrypted));
  if (nbuf == ((void*)0)) {
   wpabuf_free(in_decrypted);
   return;
  }

  resp = wpabuf_head(respData);
  nhdr = wpabuf_put(nbuf, sizeof(*nhdr));
  nhdr->code = resp->code;
  nhdr->identifier = resp->identifier;
  nhdr->length = host_to_be16(sizeof(struct eap_hdr) +
         wpabuf_len(in_decrypted));
  wpabuf_put_buf(nbuf, in_decrypted);
  wpabuf_free(in_decrypted);

  in_decrypted = nbuf;
 }

 hdr = wpabuf_head(in_decrypted);
 if (wpabuf_len(in_decrypted) < (int) sizeof(*hdr)) {
  wpa_printf(MSG_INFO, "EAP-PEAP: Too short Phase 2 "
      "EAP frame (len=%lu)",
      (unsigned long) wpabuf_len(in_decrypted));
  wpabuf_free(in_decrypted);
  eap_peap_req_failure(sm, data);
  return;
 }
 len = be_to_host16(hdr->length);
 if (len > wpabuf_len(in_decrypted)) {
  wpa_printf(MSG_INFO, "EAP-PEAP: Length mismatch in "
      "Phase 2 EAP frame (len=%lu hdr->length=%lu)",
      (unsigned long) wpabuf_len(in_decrypted),
      (unsigned long) len);
  wpabuf_free(in_decrypted);
  eap_peap_req_failure(sm, data);
  return;
 }
 wpa_printf(MSG_DEBUG, "EAP-PEAP: received Phase 2: code=%d "
     "identifier=%d length=%lu", hdr->code, hdr->identifier,
     (unsigned long) len);
 switch (hdr->code) {
 case 129:
  eap_peap_process_phase2_response(sm, data, in_decrypted);
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Phase 2 Success");
  if (data->state == SUCCESS_REQ) {
   eap_peap_state(data, SUCCESS);
   eap_peap_valid_session(sm, data);
  }
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Phase 2 Failure");
  eap_peap_state(data, FAILURE);
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-PEAP: Unexpected code=%d in "
      "Phase 2 EAP header", hdr->code);
  break;
 }

 wpabuf_free(in_decrypted);
}

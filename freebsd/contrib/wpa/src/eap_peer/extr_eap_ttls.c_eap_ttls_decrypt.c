
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct ttls_parse_avp {int eapdata; } ;
struct eap_ttls_data {scalar_t__ phase2_start; int ssl; int ttls_version; struct wpabuf const* pending_phase2_req; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; } ;
typedef int parse ;


 int DECISION_FAIL ;
 int EAP_TYPE_TTLS ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int eap_peer_tls_decrypt (struct eap_sm*,int *,struct wpabuf const*,struct wpabuf const**) ;
 int eap_peer_tls_encrypt (struct eap_sm*,int *,int ,int ,int ,int *,struct wpabuf const**) ;
 int eap_peer_tls_reset_input (int *) ;
 int eap_ttls_implicit_identity_request (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int ,struct wpabuf const**) ;
 scalar_t__ eap_ttls_parse_avps (struct wpabuf const*,struct ttls_parse_avp*) ;
 int eap_ttls_phase2_start (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int ,struct wpabuf const**) ;
 int eap_ttls_process_decrypted (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int ,struct ttls_parse_avp*,struct wpabuf const*,struct wpabuf const**) ;
 int os_free (int ) ;
 int os_memset (struct ttls_parse_avp*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_clear_free (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int eap_ttls_decrypt(struct eap_sm *sm, struct eap_ttls_data *data,
       struct eap_method_ret *ret, u8 identifier,
       const struct wpabuf *in_data,
       struct wpabuf **out_data)
{
 struct wpabuf *in_decrypted = ((void*)0);
 int retval = 0;
 struct ttls_parse_avp parse;

 os_memset(&parse, 0, sizeof(parse));

 wpa_printf(MSG_DEBUG, "EAP-TTLS: received %lu bytes encrypted data for"
     " Phase 2",
     in_data ? (unsigned long) wpabuf_len(in_data) : 0);

 if (data->pending_phase2_req) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Pending Phase 2 request - "
      "skip decryption and use old data");

  eap_peer_tls_reset_input(&data->ssl);

  in_decrypted = data->pending_phase2_req;
  data->pending_phase2_req = ((void*)0);
  if (wpabuf_len(in_decrypted) == 0) {
   wpabuf_clear_free(in_decrypted);
   return eap_ttls_implicit_identity_request(
    sm, data, ret, identifier, out_data);
  }
  goto continue_req;
 }

 if ((in_data == ((void*)0) || wpabuf_len(in_data) == 0) &&
     data->phase2_start) {
  return eap_ttls_phase2_start(sm, data, ret, identifier,
          out_data);
 }

 if (in_data == ((void*)0) || wpabuf_len(in_data) == 0) {

  return eap_peer_tls_encrypt(sm, &data->ssl, EAP_TYPE_TTLS,
         data->ttls_version,
         identifier, ((void*)0), out_data);
 }

 retval = eap_peer_tls_decrypt(sm, &data->ssl, in_data, &in_decrypted);
 if (retval)
  goto done;

continue_req:
 data->phase2_start = 0;

 if (eap_ttls_parse_avps(in_decrypted, &parse) < 0) {
  retval = -1;
  goto done;
 }

 retval = eap_ttls_process_decrypted(sm, data, ret, identifier,
         &parse, in_decrypted, out_data);

done:
 wpabuf_clear_free(in_decrypted);
 os_free(parse.eapdata);

 if (retval < 0) {
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
 }

 return retval;
}

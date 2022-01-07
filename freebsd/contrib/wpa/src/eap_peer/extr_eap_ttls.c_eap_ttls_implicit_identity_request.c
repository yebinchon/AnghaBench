
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int pending_phase2_req; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {void* decision; void* methodState; } ;
struct eap_hdr {int dummy; } ;


 void* DECISION_FAIL ;
 void* METHOD_DONE ;
 int MSG_INFO ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_ttls_encrypt_response (struct eap_sm*,struct eap_ttls_data*,struct wpabuf*,int ,struct wpabuf**) ;
 scalar_t__ eap_ttls_fake_identity_request () ;
 scalar_t__ eap_ttls_phase2_request (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ;
 int os_free (struct eap_hdr*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_alloc (int ) ;
 int wpabuf_clear_free (int ) ;

__attribute__((used)) static int eap_ttls_implicit_identity_request(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret,
           u8 identifier,
           struct wpabuf **out_data)
{
 int retval = 0;
 struct eap_hdr *hdr;
 struct wpabuf *resp;

 hdr = (struct eap_hdr *) eap_ttls_fake_identity_request();
 if (hdr == ((void*)0)) {
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return -1;
 }

 resp = ((void*)0);
 if (eap_ttls_phase2_request(sm, data, ret, hdr, &resp)) {
  wpa_printf(MSG_INFO, "EAP-TTLS: Phase2 Request "
      "processing failed");
  retval = -1;
 } else {
  struct eap_peer_config *config = eap_get_config(sm);
  if (resp == ((void*)0) &&
      (config->pending_req_identity ||
       config->pending_req_password ||
       config->pending_req_otp ||
       config->pending_req_new_password ||
       config->pending_req_sim)) {





   wpabuf_clear_free(data->pending_phase2_req);
   data->pending_phase2_req = wpabuf_alloc(0);
  }

  retval = eap_ttls_encrypt_response(sm, data, resp, identifier,
         out_data);
 }

 os_free(hdr);

 if (retval < 0) {
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
 }

 return retval;
}

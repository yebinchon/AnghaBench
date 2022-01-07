
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_mschapv2_hdr {int ms_length; int mschapv2_id; int op_code; } ;
struct eap_mschapv2_data {int auth_challenge; int auth_challenge_from_tls; void* state; } ;


 int CHALLENGE_LEN ;
 int EAP_CODE_REQUEST ;
 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSCHAPV2_OP_CHALLENGE ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int WPA_PUT_BE16 (int ,size_t) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 scalar_t__ random_get_bytes (int ,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;
 struct eap_mschapv2_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_mschapv2_build_challenge(
 struct eap_sm *sm, struct eap_mschapv2_data *data, u8 id)
{
 struct wpabuf *req;
 struct eap_mschapv2_hdr *ms;
 size_t ms_len;

 if (!data->auth_challenge_from_tls &&
     random_get_bytes(data->auth_challenge, CHALLENGE_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-MSCHAPV2: Failed to get random "
      "data");
  data->state = FAILURE;
  return ((void*)0);
 }

 ms_len = sizeof(*ms) + 1 + CHALLENGE_LEN + sm->server_id_len;
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, ms_len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-MSCHAPV2: Failed to allocate memory"
      " for request");
  data->state = FAILURE;
  return ((void*)0);
 }

 ms = wpabuf_put(req, sizeof(*ms));
 ms->op_code = MSCHAPV2_OP_CHALLENGE;
 ms->mschapv2_id = id;
 WPA_PUT_BE16(ms->ms_length, ms_len);

 wpabuf_put_u8(req, CHALLENGE_LEN);
 if (!data->auth_challenge_from_tls)
  wpabuf_put_data(req, data->auth_challenge, CHALLENGE_LEN);
 else
  wpabuf_put(req, CHALLENGE_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-MSCHAPV2: Challenge",
      data->auth_challenge, CHALLENGE_LEN);
 wpabuf_put_data(req, sm->server_id, sm->server_id_len);

 return req;
}

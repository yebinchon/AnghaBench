
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_gpsk_data {int id_peer_len; int id_server_len; int id_len; int specifier; int vendor; int sk_len; int sk; int const* session_id; int const* id_server; int const* id_peer; int const* rand_server; int const* rand_peer; int psk_len; int psk; int pk_len; int pk; int emsk; int msk; } ;
struct eap_gpsk_csuite {int specifier; int vendor; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_GPSK_OPCODE_GPSK_2 ;
 int EAP_GPSK_RAND_LEN ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int WPA_PUT_BE16 (int ,int ) ;
 int WPA_PUT_BE32 (int ,int ) ;
 scalar_t__ eap_gpsk_compute_mic (int ,int ,int ,int ,int *,int,int *) ;
 scalar_t__ eap_gpsk_derive_keys (int ,int ,int ,int ,int const*,int const*,int const*,size_t,int const*,size_t,int ,int ,int ,int *,int ,int *) ;
 scalar_t__ eap_gpsk_derive_session_id (int ,int ,int ,int ,int const*,int const*,int const*,size_t,int const*,size_t,int ,int const*,int*) ;
 size_t eap_gpsk_mic_len (int ,int ) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 scalar_t__ random_get_bytes (int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 void* wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_be16 (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_send_gpsk_2(struct eap_gpsk_data *data,
         u8 identifier,
         const u8 *csuite_list,
         size_t csuite_list_len)
{
 struct wpabuf *resp;
 size_t len, miclen;
 u8 *rpos, *start;
 struct eap_gpsk_csuite *csuite;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Sending Response/GPSK-2");

 miclen = eap_gpsk_mic_len(data->vendor, data->specifier);
 len = 1 + 2 + data->id_peer_len + 2 + data->id_server_len +
  2 * EAP_GPSK_RAND_LEN + 2 + csuite_list_len +
  sizeof(struct eap_gpsk_csuite) + 2 + miclen;

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
        EAP_CODE_RESPONSE, identifier);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, EAP_GPSK_OPCODE_GPSK_2);
 start = wpabuf_put(resp, 0);

 wpa_hexdump_ascii(MSG_DEBUG, "EAP-GPSK: ID_Peer",
     data->id_peer, data->id_peer_len);
 wpabuf_put_be16(resp, data->id_peer_len);
 wpabuf_put_data(resp, data->id_peer, data->id_peer_len);

 wpabuf_put_be16(resp, data->id_server_len);
 wpabuf_put_data(resp, data->id_server, data->id_server_len);

 if (random_get_bytes(data->rand_peer, EAP_GPSK_RAND_LEN)) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to get random data "
      "for RAND_Peer");
  eap_gpsk_state(data, FAILURE);
  wpabuf_free(resp);
  return ((void*)0);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Peer",
      data->rand_peer, EAP_GPSK_RAND_LEN);
 wpabuf_put_data(resp, data->rand_peer, EAP_GPSK_RAND_LEN);
 wpabuf_put_data(resp, data->rand_server, EAP_GPSK_RAND_LEN);

 wpabuf_put_be16(resp, csuite_list_len);
 wpabuf_put_data(resp, csuite_list, csuite_list_len);

 csuite = wpabuf_put(resp, sizeof(*csuite));
 WPA_PUT_BE32(csuite->vendor, data->vendor);
 WPA_PUT_BE16(csuite->specifier, data->specifier);

 if (eap_gpsk_derive_keys(data->psk, data->psk_len,
     data->vendor, data->specifier,
     data->rand_peer, data->rand_server,
     data->id_peer, data->id_peer_len,
     data->id_server, data->id_server_len,
     data->msk, data->emsk,
     data->sk, &data->sk_len,
     data->pk, &data->pk_len) < 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to derive keys");
  eap_gpsk_state(data, FAILURE);
  wpabuf_free(resp);
  return ((void*)0);
 }

 if (eap_gpsk_derive_session_id(data->psk, data->psk_len,
           data->vendor, data->specifier,
           data->rand_peer, data->rand_server,
           data->id_peer, data->id_peer_len,
           data->id_server, data->id_server_len,
           EAP_TYPE_GPSK,
           data->session_id, &data->id_len) < 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to derive Session-Id");
  eap_gpsk_state(data, FAILURE);
  wpabuf_free(resp);
  return ((void*)0);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Derived Session-Id",
      data->session_id, data->id_len);


 wpabuf_put_be16(resp, 0);

 rpos = wpabuf_put(resp, miclen);
 if (eap_gpsk_compute_mic(data->sk, data->sk_len, data->vendor,
     data->specifier, start, rpos - start, rpos) <
     0) {
  eap_gpsk_state(data, FAILURE);
  wpabuf_free(resp);
  return ((void*)0);
 }

 return resp;
}

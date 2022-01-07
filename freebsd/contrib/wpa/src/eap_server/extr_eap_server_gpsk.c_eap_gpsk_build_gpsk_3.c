
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_gpsk_data {int specifier; int vendor; int sk_len; int sk; int rand_server; int rand_peer; } ;
struct eap_gpsk_csuite {int specifier; int vendor; } ;


 int EAP_CODE_REQUEST ;
 int EAP_GPSK_OPCODE_GPSK_3 ;
 int EAP_GPSK_RAND_LEN ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_PUT_BE16 (int ,int ) ;
 int WPA_PUT_BE32 (int ,int ) ;
 scalar_t__ eap_gpsk_compute_mic (int ,int ,int ,int ,int *,int,int *) ;
 size_t eap_gpsk_mic_len (int ,int ) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 void* wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_build_gpsk_3(struct eap_sm *sm,
          struct eap_gpsk_data *data, u8 id)
{
 u8 *pos, *start;
 size_t len, miclen;
 struct eap_gpsk_csuite *csuite;
 struct wpabuf *req;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Request/GPSK-3");

 miclen = eap_gpsk_mic_len(data->vendor, data->specifier);
 len = 1 + 2 * EAP_GPSK_RAND_LEN + 2 + sm->server_id_len +
  sizeof(struct eap_gpsk_csuite) + 2 + miclen;
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-GPSK: Failed to allocate memory "
      "for request/GPSK-3");
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_GPSK_OPCODE_GPSK_3);
 start = wpabuf_put(req, 0);

 wpabuf_put_data(req, data->rand_peer, EAP_GPSK_RAND_LEN);
 wpabuf_put_data(req, data->rand_server, EAP_GPSK_RAND_LEN);
 wpabuf_put_be16(req, sm->server_id_len);
 wpabuf_put_data(req, sm->server_id, sm->server_id_len);
 csuite = wpabuf_put(req, sizeof(*csuite));
 WPA_PUT_BE32(csuite->vendor, data->vendor);
 WPA_PUT_BE16(csuite->specifier, data->specifier);


 wpabuf_put_be16(req, 0);

 pos = wpabuf_put(req, miclen);
 if (eap_gpsk_compute_mic(data->sk, data->sk_len, data->vendor,
     data->specifier, start, pos - start, pos) < 0)
 {
  wpabuf_free(req);
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }

 return req;
}

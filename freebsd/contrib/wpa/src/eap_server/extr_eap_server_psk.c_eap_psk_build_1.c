
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ server_id_len; int server_id; } ;
struct eap_psk_hdr_1 {int rand_s; int flags; } ;
struct eap_psk_data {int rand_s; void* state; } ;


 int EAP_CODE_REQUEST ;
 int EAP_PSK_FLAGS_SET_T (int ) ;
 int EAP_PSK_RAND_LEN ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__,int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct eap_psk_hdr_1* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;

__attribute__((used)) static struct wpabuf * eap_psk_build_1(struct eap_sm *sm,
           struct eap_psk_data *data, u8 id)
{
 struct wpabuf *req;
 struct eap_psk_hdr_1 *psk;

 wpa_printf(MSG_DEBUG, "EAP-PSK: PSK-1 (sending)");

 if (random_get_bytes(data->rand_s, EAP_PSK_RAND_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-PSK: Failed to get random data");
  data->state = FAILURE;
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PSK: RAND_S (server rand)",
      data->rand_s, EAP_PSK_RAND_LEN);

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PSK,
       sizeof(*psk) + sm->server_id_len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-PSK: Failed to allocate memory "
      "request");
  data->state = FAILURE;
  return ((void*)0);
 }

 psk = wpabuf_put(req, sizeof(*psk));
 psk->flags = EAP_PSK_FLAGS_SET_T(0);
 os_memcpy(psk->rand_s, data->rand_s, EAP_PSK_RAND_LEN);
 wpabuf_put_data(req, sm->server_id, sm->server_id_len);

 return req;
}

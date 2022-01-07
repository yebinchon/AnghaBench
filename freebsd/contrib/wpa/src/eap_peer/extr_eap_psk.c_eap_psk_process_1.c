
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_psk_hdr_2 {int * mac_p; int * rand_p; int * rand_s; int flags; } ;
struct eap_psk_hdr_1 {int * rand_s; int flags; } ;
struct eap_psk_data {size_t id_s_len; int id_p_len; int state; int * id_p; int ak; int * rand_p; int * id_s; int * rand_s; } ;
struct eap_method_ret {void* ignore; int decision; int methodState; } ;


 int DECISION_FAIL ;
 int EAP_CODE_RESPONSE ;
 int EAP_PSK_FLAGS_GET_T (int ) ;
 int EAP_PSK_FLAGS_SET_T (int) ;
 int EAP_PSK_MAC_LEN ;
 int EAP_PSK_RAND_LEN ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int PSK_MAC_SENT ;
 void* TRUE ;
 int eap_get_id (struct wpabuf const*) ;
 int * eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 scalar_t__ omac1_aes_128 (int ,int *,size_t,int *) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,int) ;
 int * os_memdup (struct eap_psk_hdr_1 const*,size_t) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 struct eap_psk_hdr_2* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int *,int) ;

__attribute__((used)) static struct wpabuf * eap_psk_process_1(struct eap_psk_data *data,
      struct eap_method_ret *ret,
      const struct wpabuf *reqData)
{
 const struct eap_psk_hdr_1 *hdr1;
 struct eap_psk_hdr_2 *hdr2;
 struct wpabuf *resp;
 u8 *buf, *pos;
 size_t buflen, len;
 const u8 *cpos;

 wpa_printf(MSG_DEBUG, "EAP-PSK: in INIT state");

 cpos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PSK, reqData, &len);
 hdr1 = (const struct eap_psk_hdr_1 *) cpos;
 if (cpos == ((void*)0) || len < sizeof(*hdr1)) {
  wpa_printf(MSG_INFO, "EAP-PSK: Invalid first message "
      "length (%lu; expected %lu or more)",
      (unsigned long) len,
      (unsigned long) sizeof(*hdr1));
  ret->ignore = TRUE;
  return ((void*)0);
 }
 wpa_printf(MSG_DEBUG, "EAP-PSK: Flags=0x%x", hdr1->flags);
 if (EAP_PSK_FLAGS_GET_T(hdr1->flags) != 0) {
  wpa_printf(MSG_INFO, "EAP-PSK: Unexpected T=%d (expected 0)",
      EAP_PSK_FLAGS_GET_T(hdr1->flags));
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-PSK: RAND_S", hdr1->rand_s,
      EAP_PSK_RAND_LEN);
 os_memcpy(data->rand_s, hdr1->rand_s, EAP_PSK_RAND_LEN);
 os_free(data->id_s);
 data->id_s_len = len - sizeof(*hdr1);
 data->id_s = os_memdup(hdr1 + 1, data->id_s_len);
 if (data->id_s == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-PSK: Failed to allocate memory for "
      "ID_S (len=%lu)", (unsigned long) data->id_s_len);
  ret->ignore = TRUE;
  return ((void*)0);
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-PSK: ID_S",
     data->id_s, data->id_s_len);

 if (random_get_bytes(data->rand_p, EAP_PSK_RAND_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-PSK: Failed to get random data");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PSK,
        sizeof(*hdr2) + data->id_p_len, EAP_CODE_RESPONSE,
        eap_get_id(reqData));
 if (resp == ((void*)0))
  return ((void*)0);
 hdr2 = wpabuf_put(resp, sizeof(*hdr2));
 hdr2->flags = EAP_PSK_FLAGS_SET_T(1);
 os_memcpy(hdr2->rand_s, hdr1->rand_s, EAP_PSK_RAND_LEN);
 os_memcpy(hdr2->rand_p, data->rand_p, EAP_PSK_RAND_LEN);
 wpabuf_put_data(resp, data->id_p, data->id_p_len);

 buflen = data->id_p_len + data->id_s_len + 2 * EAP_PSK_RAND_LEN;
 buf = os_malloc(buflen);
 if (buf == ((void*)0)) {
  wpabuf_free(resp);
  return ((void*)0);
 }
 os_memcpy(buf, data->id_p, data->id_p_len);
 pos = buf + data->id_p_len;
 os_memcpy(pos, data->id_s, data->id_s_len);
 pos += data->id_s_len;
 os_memcpy(pos, hdr1->rand_s, EAP_PSK_RAND_LEN);
 pos += EAP_PSK_RAND_LEN;
 os_memcpy(pos, data->rand_p, EAP_PSK_RAND_LEN);
 if (omac1_aes_128(data->ak, buf, buflen, hdr2->mac_p)) {
  os_free(buf);
  wpabuf_free(resp);
  return ((void*)0);
 }
 os_free(buf);
 wpa_hexdump(MSG_DEBUG, "EAP-PSK: RAND_P", hdr2->rand_p,
      EAP_PSK_RAND_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-PSK: MAC_P", hdr2->mac_p, EAP_PSK_MAC_LEN);
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-PSK: ID_P",
     data->id_p, data->id_p_len);

 data->state = PSK_MAC_SENT;

 return resp;
}

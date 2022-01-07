
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_result {int status; int length; int tlv_type; } ;
struct teap_tlv_hdr {void* length; void* tlv_type; } ;
struct pac_attr_hdr {void* len; void* type; } ;
struct os_time {scalar_t__ sec; } ;
struct eap_teap_data {int srv_id_len; int * srv_id_info; int * srv_id; scalar_t__ pac_key_lifetime; int pac_opaque_encr; } ;
struct eap_sm {int identity_len; int * identity; } ;


 int EAP_TEAP_PAC_KEY_LEN ;
 int MSG_DEBUG ;
 int PAC_OPAQUE_TYPE_IDENTITY ;
 int PAC_OPAQUE_TYPE_KEY ;
 int PAC_OPAQUE_TYPE_LIFETIME ;
 int PAC_OPAQUE_TYPE_PAD ;
 int PAC_TYPE_A_ID ;
 int PAC_TYPE_A_ID_INFO ;
 int PAC_TYPE_CRED_LIFETIME ;
 int PAC_TYPE_I_ID ;
 int PAC_TYPE_PAC_INFO ;
 int PAC_TYPE_PAC_KEY ;
 int PAC_TYPE_PAC_OPAQUE ;
 int PAC_TYPE_PAC_TYPE ;
 int PAC_TYPE_TUNNEL_PAC ;
 int TEAP_STATUS_SUCCESS ;
 int TEAP_TLV_MANDATORY ;
 int TEAP_TLV_PAC ;
 int TEAP_TLV_RESULT ;
 int WPA_PUT_BE16 (int *,int) ;
 int WPA_PUT_BE32 (int *,scalar_t__) ;
 scalar_t__ aes_wrap (int ,int,size_t,int *,int *) ;
 int eap_teap_put_tlv (struct wpabuf*,int ,int *,size_t) ;
 int eap_teap_put_tlv_hdr (struct wpabuf*,int ,int) ;
 void* host_to_be16 (int) ;
 int os_free (int *) ;
 scalar_t__ os_get_time (struct os_time*) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,int) ;
 size_t os_strlen (int *) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int *,int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 void* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_be32 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * eap_teap_build_pac(struct eap_sm *sm,
       struct eap_teap_data *data)
{
 u8 pac_key[EAP_TEAP_PAC_KEY_LEN];
 u8 *pac_buf, *pac_opaque;
 struct wpabuf *buf;
 u8 *pos;
 size_t buf_len, srv_id_info_len, pac_len;
 struct teap_tlv_hdr *pac_tlv;
 struct pac_attr_hdr *pac_info;
 struct teap_tlv_result *result;
 struct os_time now;

 wpa_printf(MSG_DEBUG, "EAP-TEAP: Build a new PAC");

 if (random_get_bytes(pac_key, EAP_TEAP_PAC_KEY_LEN) < 0 ||
     os_get_time(&now) < 0)
  return ((void*)0);
 wpa_hexdump_key(MSG_DEBUG, "EAP-TEAP: Generated PAC-Key",
   pac_key, EAP_TEAP_PAC_KEY_LEN);

 pac_len = (2 + EAP_TEAP_PAC_KEY_LEN) + (2 + 4) +
  (2 + sm->identity_len) + 8;
 pac_buf = os_malloc(pac_len);
 if (!pac_buf)
  return ((void*)0);

 srv_id_info_len = os_strlen(data->srv_id_info);

 pos = pac_buf;
 *pos++ = PAC_OPAQUE_TYPE_KEY;
 *pos++ = EAP_TEAP_PAC_KEY_LEN;
 os_memcpy(pos, pac_key, EAP_TEAP_PAC_KEY_LEN);
 pos += EAP_TEAP_PAC_KEY_LEN;

 wpa_printf(MSG_DEBUG, "EAP-TEAP: PAC-Key lifetime: %u seconds",
     data->pac_key_lifetime);
 *pos++ = PAC_OPAQUE_TYPE_LIFETIME;
 *pos++ = 4;
 WPA_PUT_BE32(pos, now.sec + data->pac_key_lifetime);
 pos += 4;

 if (sm->identity) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-TEAP: PAC-Opaque Identity",
      sm->identity, sm->identity_len);
  *pos++ = PAC_OPAQUE_TYPE_IDENTITY;
  *pos++ = sm->identity_len;
  os_memcpy(pos, sm->identity, sm->identity_len);
  pos += sm->identity_len;
 }

 pac_len = pos - pac_buf;
 while (pac_len % 8) {
  *pos++ = PAC_OPAQUE_TYPE_PAD;
  pac_len++;
 }

 pac_opaque = os_malloc(pac_len + 8);
 if (!pac_opaque) {
  os_free(pac_buf);
  return ((void*)0);
 }
 if (aes_wrap(data->pac_opaque_encr, sizeof(data->pac_opaque_encr),
       pac_len / 8, pac_buf, pac_opaque) < 0) {
  os_free(pac_buf);
  os_free(pac_opaque);
  return ((void*)0);
 }
 os_free(pac_buf);

 pac_len += 8;
 wpa_hexdump(MSG_DEBUG, "EAP-TEAP: PAC-Opaque", pac_opaque, pac_len);

 buf_len = sizeof(*pac_tlv) +
  sizeof(struct pac_attr_hdr) + EAP_TEAP_PAC_KEY_LEN +
  sizeof(struct pac_attr_hdr) + pac_len +
  data->srv_id_len + srv_id_info_len + 100 + sizeof(*result);
 buf = wpabuf_alloc(buf_len);
 if (!buf) {
  os_free(pac_opaque);
  return ((void*)0);
 }


 wpa_printf(MSG_DEBUG, "EAP-TEAP: Add Result TLV (status=SUCCESS)");
 result = wpabuf_put(buf, sizeof(*result));
 WPA_PUT_BE16((u8 *) &result->tlv_type,
       TEAP_TLV_MANDATORY | TEAP_TLV_RESULT);
 WPA_PUT_BE16((u8 *) &result->length, 2);
 WPA_PUT_BE16((u8 *) &result->status, TEAP_STATUS_SUCCESS);


 wpa_printf(MSG_DEBUG, "EAP-TEAP: Add PAC TLV");
 pac_tlv = wpabuf_put(buf, sizeof(*pac_tlv));
 pac_tlv->tlv_type = host_to_be16(TEAP_TLV_MANDATORY | TEAP_TLV_PAC);


 eap_teap_put_tlv(buf, PAC_TYPE_PAC_KEY, pac_key, EAP_TEAP_PAC_KEY_LEN);


 eap_teap_put_tlv(buf, PAC_TYPE_PAC_OPAQUE, pac_opaque, pac_len);
 os_free(pac_opaque);


 pac_info = wpabuf_put(buf, sizeof(*pac_info));
 pac_info->type = host_to_be16(PAC_TYPE_PAC_INFO);


 eap_teap_put_tlv_hdr(buf, PAC_TYPE_CRED_LIFETIME, 4);
 wpabuf_put_be32(buf, now.sec + data->pac_key_lifetime);


 eap_teap_put_tlv(buf, PAC_TYPE_A_ID, data->srv_id, data->srv_id_len);



 if (sm->identity) {
  eap_teap_put_tlv(buf, PAC_TYPE_I_ID, sm->identity,
     sm->identity_len);
 }


 eap_teap_put_tlv(buf, PAC_TYPE_A_ID_INFO, data->srv_id_info,
    srv_id_info_len);


 eap_teap_put_tlv_hdr(buf, PAC_TYPE_PAC_TYPE, 2);
 wpabuf_put_be16(buf, PAC_TYPE_TUNNEL_PAC);


 pos = wpabuf_put(buf, 0);
 pac_info->len = host_to_be16(pos - (u8 *) (pac_info + 1));
 pac_tlv->length = host_to_be16(pos - (u8 *) (pac_tlv + 1));

 return buf;
}

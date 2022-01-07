
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_gpsk_data {int csuite_count; int csuite_list; int rand_server; } ;
struct eap_gpsk_csuite {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int EAP_GPSK_OPCODE_GPSK_1 ;
 int EAP_GPSK_RAND_LEN ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int ) ;
 scalar_t__ random_get_bytes (int ,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_build_gpsk_1(struct eap_sm *sm,
          struct eap_gpsk_data *data, u8 id)
{
 size_t len;
 struct wpabuf *req;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Request/GPSK-1");

 if (random_get_bytes(data->rand_server, EAP_GPSK_RAND_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-GPSK: Failed to get random data");
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-GPSK: RAND_Server",
      data->rand_server, EAP_GPSK_RAND_LEN);

 len = 1 + 2 + sm->server_id_len + EAP_GPSK_RAND_LEN + 2 +
  data->csuite_count * sizeof(struct eap_gpsk_csuite);
 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-GPSK: Failed to allocate memory "
      "for request/GPSK-1");
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_GPSK_OPCODE_GPSK_1);
 wpabuf_put_be16(req, sm->server_id_len);
 wpabuf_put_data(req, sm->server_id, sm->server_id_len);
 wpabuf_put_data(req, data->rand_server, EAP_GPSK_RAND_LEN);
 wpabuf_put_be16(req,
   data->csuite_count * sizeof(struct eap_gpsk_csuite));
 wpabuf_put_data(req, data->csuite_list,
   data->csuite_count * sizeof(struct eap_gpsk_csuite));

 return req;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_md5_data {void* state; int challenge; } ;


 scalar_t__ CHALLENGE_LEN ;
 void* CONTINUE ;
 int EAP_CODE_REQUEST ;
 int EAP_TYPE_MD5 ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ random_get_bytes (int ,scalar_t__) ;
 int wpa_hexdump (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * eap_md5_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_md5_data *data = priv;
 struct wpabuf *req;

 if (random_get_bytes(data->challenge, CHALLENGE_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-MD5: Failed to get random data");
  data->state = FAILURE;
  return ((void*)0);
 }

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_MD5, 1 + CHALLENGE_LEN,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-MD5: Failed to allocate memory for "
      "request");
  data->state = FAILURE;
  return ((void*)0);
 }

 wpabuf_put_u8(req, CHALLENGE_LEN);
 wpabuf_put_data(req, data->challenge, CHALLENGE_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-MD5: Challenge", data->challenge,
      CHALLENGE_LEN);

 data->state = CONTINUE;

 return req;
}

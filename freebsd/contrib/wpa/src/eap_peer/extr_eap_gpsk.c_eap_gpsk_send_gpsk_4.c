
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_gpsk_data {int specifier; int vendor; int sk_len; int sk; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_GPSK_OPCODE_GPSK_4 ;
 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 scalar_t__ eap_gpsk_compute_mic (int ,int ,int ,int ,int *,int,int *) ;
 size_t eap_gpsk_mic_len (int ,int ) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_send_gpsk_4(struct eap_gpsk_data *data,
         u8 identifier)
{
 struct wpabuf *resp;
 u8 *rpos, *start;
 size_t mlen;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Sending Response/GPSK-4");

 mlen = eap_gpsk_mic_len(data->vendor, data->specifier);

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_GPSK, 1 + 2 + mlen,
        EAP_CODE_RESPONSE, identifier);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, EAP_GPSK_OPCODE_GPSK_4);
 start = wpabuf_put(resp, 0);


 wpabuf_put_be16(resp, 0);

 rpos = wpabuf_put(resp, mlen);
 if (eap_gpsk_compute_mic(data->sk, data->sk_len, data->vendor,
     data->specifier, start, rpos - start, rpos) <
     0) {
  eap_gpsk_state(data, FAILURE);
  wpabuf_free(resp);
  return ((void*)0);
 }

 return resp;
}

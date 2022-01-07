
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int ssl; int mschapv2_auth_response; int mschapv2_ident; scalar_t__ mschapv2_resp_ok; } ;
struct eap_sm {int dummy; } ;


 int AVP_PAD (int *,int *) ;
 int MSG_DEBUG ;
 int RADIUS_ATTR_MS_CHAP2_SUCCESS ;
 int RADIUS_ATTR_MS_CHAP_ERROR ;
 int RADIUS_VENDOR_ID_MICROSOFT ;
 struct wpabuf* eap_server_tls_encrypt (struct eap_sm*,int *,struct wpabuf*) ;
 int * eap_ttls_avp_hdr (int *,int ,int ,int,int) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,char*,int) ;
 int os_snprintf (char*,int,char*) ;
 int os_snprintf_error (int,int) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_snprintf_hex_uppercase (char*,int,int ,int) ;
 int wpabuf_set (struct wpabuf*,int *,int) ;

__attribute__((used)) static struct wpabuf * eap_ttls_build_phase2_mschapv2(
 struct eap_sm *sm, struct eap_ttls_data *data)
{
 struct wpabuf *encr_req, msgbuf;
 u8 *req, *pos, *end;
 int ret;

 pos = req = os_malloc(100);
 if (req == ((void*)0))
  return ((void*)0);
 end = req + 100;

 if (data->mschapv2_resp_ok) {
  pos = eap_ttls_avp_hdr(pos, RADIUS_ATTR_MS_CHAP2_SUCCESS,
           RADIUS_VENDOR_ID_MICROSOFT, 1, 43);
  *pos++ = data->mschapv2_ident;
  ret = os_snprintf((char *) pos, end - pos, "S=");
  if (!os_snprintf_error(end - pos, ret))
   pos += ret;
  pos += wpa_snprintf_hex_uppercase(
   (char *) pos, end - pos, data->mschapv2_auth_response,
   sizeof(data->mschapv2_auth_response));
 } else {
  pos = eap_ttls_avp_hdr(pos, RADIUS_ATTR_MS_CHAP_ERROR,
           RADIUS_VENDOR_ID_MICROSOFT, 1, 6);
  os_memcpy(pos, "Failed", 6);
  pos += 6;
  AVP_PAD(req, pos);
 }

 wpabuf_set(&msgbuf, req, pos - req);
 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Encrypting Phase 2 "
       "data", &msgbuf);

 encr_req = eap_server_tls_encrypt(sm, &data->ssl, &msgbuf);
 os_free(req);

 return encr_req;
}

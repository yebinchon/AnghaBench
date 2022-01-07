
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int ttls_version; int ssl; } ;
struct eap_sm {int dummy; } ;


 int EAP_TYPE_TTLS ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ eap_peer_tls_encrypt (struct eap_sm*,int *,int ,int ,int ,struct wpabuf*,struct wpabuf**) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_clear_free (struct wpabuf*) ;

__attribute__((used)) static int eap_ttls_encrypt_response(struct eap_sm *sm,
         struct eap_ttls_data *data,
         struct wpabuf *resp, u8 identifier,
         struct wpabuf **out_data)
{
 if (resp == ((void*)0))
  return 0;

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TTLS: Encrypting Phase 2 data",
       resp);
 if (eap_peer_tls_encrypt(sm, &data->ssl, EAP_TYPE_TTLS,
     data->ttls_version, identifier,
     resp, out_data)) {
  wpa_printf(MSG_INFO, "EAP-TTLS: Failed to encrypt a Phase 2 "
      "frame");
  wpabuf_clear_free(resp);
  return -1;
 }
 wpabuf_clear_free(resp);

 return 0;
}

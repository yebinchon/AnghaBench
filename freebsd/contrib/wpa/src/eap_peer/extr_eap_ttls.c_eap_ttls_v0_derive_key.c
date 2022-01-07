
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ttls_data {int id_len; scalar_t__ session_id; int ssl; scalar_t__ key_data; } ;
struct eap_sm {int dummy; } ;


 scalar_t__ EAP_EMSK_LEN ;
 scalar_t__ EAP_TLS_KEY_LEN ;
 int EAP_TYPE_TTLS ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ eap_peer_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,scalar_t__) ;
 scalar_t__ eap_peer_tls_derive_session_id (struct eap_sm*,int *,int ,int *) ;
 int eap_ttls_free_key (struct eap_ttls_data*) ;
 int os_free (scalar_t__) ;
 int wpa_hexdump (int ,char*,scalar_t__,int ) ;
 int wpa_hexdump_key (int ,char*,scalar_t__,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ttls_v0_derive_key(struct eap_sm *sm,
      struct eap_ttls_data *data)
{
 eap_ttls_free_key(data);
 data->key_data = eap_peer_tls_derive_key(sm, &data->ssl,
       "ttls keying material",
       ((void*)0), 0,
       EAP_TLS_KEY_LEN +
       EAP_EMSK_LEN);
 if (!data->key_data) {
  wpa_printf(MSG_INFO, "EAP-TTLS: Failed to derive key");
  return -1;
 }

 wpa_hexdump_key(MSG_DEBUG, "EAP-TTLS: Derived key",
   data->key_data, EAP_TLS_KEY_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-TTLS: Derived EMSK",
   data->key_data + EAP_TLS_KEY_LEN,
   EAP_EMSK_LEN);

 os_free(data->session_id);
 data->session_id = eap_peer_tls_derive_session_id(sm, &data->ssl,
         EAP_TYPE_TTLS,
                                                   &data->id_len);
 if (data->session_id) {
  wpa_hexdump(MSG_DEBUG, "EAP-TTLS: Derived Session-Id",
       data->session_id, data->id_len);
 } else {
  wpa_printf(MSG_ERROR, "EAP-TTLS: Failed to derive Session-Id");
 }

 return 0;
}

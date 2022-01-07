
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int prf; } ;
struct ikev2_responder_data {int * r_sign_msg; int key_pad_len; int key_pad; int i_nonce_len; int i_nonce; int shared_secret_len; int shared_secret; int keys; int IDr_len; int IDr; TYPE_1__ proposal; } ;
struct ikev2_prf_alg {int hash_len; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;


 int AUTH_SHARED_KEY_MIC ;
 int ID_KEY_ID ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_PUT_BE16 (int ,size_t) ;
 scalar_t__ ikev2_derive_auth_data (int ,int *,int ,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,struct ikev2_payload_hdr*) ;
 struct ikev2_prf_alg* ikev2_get_prf (int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (int *) ;
 struct ikev2_payload_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int ikev2_build_auth(struct ikev2_responder_data *data,
       struct wpabuf *msg, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;
 const struct ikev2_prf_alg *prf;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding AUTH payload");

 prf = ikev2_get_prf(data->proposal.prf);
 if (prf == ((void*)0))
  return -1;


 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;
 wpabuf_put_u8(msg, AUTH_SHARED_KEY_MIC);
 wpabuf_put(msg, 3);


 if (ikev2_derive_auth_data(data->proposal.prf, data->r_sign_msg,
       data->IDr, data->IDr_len, ID_KEY_ID,
       &data->keys, 0, data->shared_secret,
       data->shared_secret_len,
       data->i_nonce, data->i_nonce_len,
       data->key_pad, data->key_pad_len,
       wpabuf_put(msg, prf->hash_len)) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Could not derive AUTH data");
  return -1;
 }
 wpabuf_free(data->r_sign_msg);
 data->r_sign_msg = ((void*)0);

 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);
 return 0;
}

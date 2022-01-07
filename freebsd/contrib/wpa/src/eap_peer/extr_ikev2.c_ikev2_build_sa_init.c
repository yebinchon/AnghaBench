
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_responder_data {scalar_t__ peer_auth; struct wpabuf* r_sign_msg; int state; int keys; TYPE_1__ proposal; scalar_t__ IDr_len; int r_nonce_len; int r_nonce; int r_spi; } ;
struct ikev2_hdr {int dummy; } ;


 int IKEV2_NONCE_MIN_LEN ;
 int IKEV2_PAYLOAD_ENCRYPTED ;
 int IKEV2_PAYLOAD_IDr ;
 int IKEV2_PAYLOAD_KEY_EXCHANGE ;
 int IKEV2_PAYLOAD_NONCE ;
 int IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;
 int IKEV2_PAYLOAD_SA ;
 int IKEV2_SPI_LEN ;
 int IKE_SA_INIT ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ PEER_AUTH_CERT ;
 scalar_t__ PEER_AUTH_SECRET ;
 int SA_AUTH ;
 scalar_t__ ikev2_build_encrypted (int ,int ,int *,int ,struct wpabuf*,struct wpabuf*,int ) ;
 int ikev2_build_hdr (struct ikev2_responder_data*,struct wpabuf*,int ,int ,int ) ;
 scalar_t__ ikev2_build_idr (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_ker (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_nr (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_sar1 (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_derive_keys (struct ikev2_responder_data*) ;
 int ikev2_update_hdr (struct wpabuf*) ;
 scalar_t__ os_get_random (int ,int ) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 struct wpabuf* wpabuf_dup (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * ikev2_build_sa_init(struct ikev2_responder_data *data)
{
 struct wpabuf *msg;



 if (os_get_random(data->r_spi, IKEV2_SPI_LEN))
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "IKEV2: IKE_SA Responder's SPI",
      data->r_spi, IKEV2_SPI_LEN);

 data->r_nonce_len = IKEV2_NONCE_MIN_LEN;
 if (random_get_bytes(data->r_nonce, data->r_nonce_len))
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "IKEV2: Nr", data->r_nonce, data->r_nonce_len);

 msg = wpabuf_alloc(sizeof(struct ikev2_hdr) + data->IDr_len + 1500);
 if (msg == ((void*)0))
  return ((void*)0);

 ikev2_build_hdr(data, msg, IKE_SA_INIT, IKEV2_PAYLOAD_SA, 0);
 if (ikev2_build_sar1(data, msg, IKEV2_PAYLOAD_KEY_EXCHANGE) ||
     ikev2_build_ker(data, msg, IKEV2_PAYLOAD_NONCE) ||
     ikev2_build_nr(data, msg, data->peer_auth == PEER_AUTH_SECRET ?
      IKEV2_PAYLOAD_ENCRYPTED :
      IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (ikev2_derive_keys(data)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (data->peer_auth == PEER_AUTH_CERT) {


 }

 if (data->peer_auth == PEER_AUTH_SECRET) {
  struct wpabuf *plain = wpabuf_alloc(data->IDr_len + 1000);
  if (plain == ((void*)0)) {
   wpabuf_free(msg);
   return ((void*)0);
  }
  if (ikev2_build_idr(data, plain,
        IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
      ikev2_build_encrypted(data->proposal.encr,
       data->proposal.integ,
       &data->keys, 0, msg, plain,
       IKEV2_PAYLOAD_IDr)) {
   wpabuf_free(plain);
   wpabuf_free(msg);
   return ((void*)0);
  }
  wpabuf_free(plain);
 }

 ikev2_update_hdr(msg);

 wpa_hexdump_buf(MSG_MSGDUMP, "IKEV2: Sending message (SA_INIT)", msg);

 data->state = SA_AUTH;

 wpabuf_free(data->r_sign_msg);
 data->r_sign_msg = wpabuf_dup(msg);

 return msg;
}

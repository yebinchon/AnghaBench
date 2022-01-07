
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct ikev2_initiator_data {struct wpabuf* i_sign_msg; int i_nonce_len; int i_nonce; int i_spi; } ;
struct ikev2_hdr {int dummy; } ;


 int IKEV2_NONCE_MIN_LEN ;
 int IKEV2_PAYLOAD_KEY_EXCHANGE ;
 int IKEV2_PAYLOAD_NONCE ;
 int IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;
 int IKEV2_PAYLOAD_SA ;
 int IKEV2_SPI_LEN ;
 int IKE_SA_INIT ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int ikev2_build_hdr (struct ikev2_initiator_data*,struct wpabuf*,int ,int ,int ) ;
 scalar_t__ ikev2_build_kei (struct ikev2_initiator_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_ni (struct ikev2_initiator_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_sai (struct ikev2_initiator_data*,struct wpabuf*,int ) ;
 int ikev2_update_hdr (struct wpabuf*) ;
 scalar_t__ os_get_random (int ,int ) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct wpabuf* wpabuf_dup (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * ikev2_build_sa_init(struct ikev2_initiator_data *data)
{
 struct wpabuf *msg;



 if (os_get_random(data->i_spi, IKEV2_SPI_LEN))
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "IKEV2: IKE_SA Initiator's SPI",
      data->i_spi, IKEV2_SPI_LEN);

 data->i_nonce_len = IKEV2_NONCE_MIN_LEN;
 if (random_get_bytes(data->i_nonce, data->i_nonce_len))
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "IKEV2: Ni", data->i_nonce, data->i_nonce_len);

 msg = wpabuf_alloc(sizeof(struct ikev2_hdr) + 1000);
 if (msg == ((void*)0))
  return ((void*)0);

 ikev2_build_hdr(data, msg, IKE_SA_INIT, IKEV2_PAYLOAD_SA, 0);
 if (ikev2_build_sai(data, msg, IKEV2_PAYLOAD_KEY_EXCHANGE) ||
     ikev2_build_kei(data, msg, IKEV2_PAYLOAD_NONCE) ||
     ikev2_build_ni(data, msg, IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 ikev2_update_hdr(msg);

 wpa_hexdump_buf(MSG_MSGDUMP, "IKEV2: Sending message (SA_INIT)", msg);

 wpabuf_free(data->i_sign_msg);
 data->i_sign_msg = wpabuf_dup(msg);

 return msg;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_initiator_data {int unknown_user; int shared_secret_len; int keys; TYPE_1__ proposal; int IDr_len; int * shared_secret; int IDr; int cb_ctx; int * (* get_shared_secret ) (int ,int ,int ,size_t*) ;} ;
struct ikev2_hdr {int dummy; } ;


 int IKEV2_PAYLOAD_AUTHENTICATION ;
 int IKEV2_PAYLOAD_ENCRYPTED ;
 int IKEV2_PAYLOAD_IDi ;
 int IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;
 int IKE_SA_AUTH ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ ikev2_build_auth (struct ikev2_initiator_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_encrypted (int ,int ,int *,int,struct wpabuf*,struct wpabuf*,int ) ;
 int ikev2_build_hdr (struct ikev2_initiator_data*,struct wpabuf*,int ,int ,int) ;
 scalar_t__ ikev2_build_idi (struct ikev2_initiator_data*,struct wpabuf*,int ) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int * os_memdup (int const*,size_t) ;
 scalar_t__ random_get_bytes (int *,int) ;
 int * stub1 (int ,int ,int ,size_t*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * ikev2_build_sa_auth(struct ikev2_initiator_data *data)
{
 struct wpabuf *msg, *plain;
 const u8 *secret;
 size_t secret_len;

 secret = data->get_shared_secret(data->cb_ctx, data->IDr,
      data->IDr_len, &secret_len);
 if (secret == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Could not get shared secret - "
      "use fake value");




  data->unknown_user = 1;
  os_free(data->shared_secret);
  data->shared_secret = os_malloc(16);
  if (data->shared_secret == ((void*)0))
   return ((void*)0);
  data->shared_secret_len = 16;
  if (random_get_bytes(data->shared_secret, 16))
   return ((void*)0);
 } else {
  os_free(data->shared_secret);
  data->shared_secret = os_memdup(secret, secret_len);
  if (data->shared_secret == ((void*)0))
   return ((void*)0);
  data->shared_secret_len = secret_len;
 }



 msg = wpabuf_alloc(sizeof(struct ikev2_hdr) + data->IDr_len + 1000);
 if (msg == ((void*)0))
  return ((void*)0);
 ikev2_build_hdr(data, msg, IKE_SA_AUTH, IKEV2_PAYLOAD_ENCRYPTED, 1);

 plain = wpabuf_alloc(data->IDr_len + 1000);
 if (plain == ((void*)0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (ikev2_build_idi(data, plain, IKEV2_PAYLOAD_AUTHENTICATION) ||
     ikev2_build_auth(data, plain, IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
     ikev2_build_encrypted(data->proposal.encr, data->proposal.integ,
      &data->keys, 1, msg, plain,
      IKEV2_PAYLOAD_IDi)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return ((void*)0);
 }
 wpabuf_free(plain);

 wpa_hexdump_buf(MSG_MSGDUMP, "IKEV2: Sending message (SA_AUTH)", msg);

 return msg;
}

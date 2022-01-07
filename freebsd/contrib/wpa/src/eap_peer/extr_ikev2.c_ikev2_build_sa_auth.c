
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_responder_data {int state; int keys; TYPE_1__ proposal; scalar_t__ IDr_len; } ;
struct ikev2_hdr {int dummy; } ;


 int IKEV2_DONE ;
 int IKEV2_PAYLOAD_AUTHENTICATION ;
 int IKEV2_PAYLOAD_ENCRYPTED ;
 int IKEV2_PAYLOAD_IDr ;
 int IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;
 int IKE_SA_AUTH ;
 int MSG_MSGDUMP ;
 scalar_t__ ikev2_build_auth (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 scalar_t__ ikev2_build_encrypted (int ,int ,int *,int ,struct wpabuf*,struct wpabuf*,int ) ;
 int ikev2_build_hdr (struct ikev2_responder_data*,struct wpabuf*,int ,int ,int) ;
 scalar_t__ ikev2_build_idr (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * ikev2_build_sa_auth(struct ikev2_responder_data *data)
{
 struct wpabuf *msg, *plain;



 msg = wpabuf_alloc(sizeof(struct ikev2_hdr) + data->IDr_len + 1000);
 if (msg == ((void*)0))
  return ((void*)0);
 ikev2_build_hdr(data, msg, IKE_SA_AUTH, IKEV2_PAYLOAD_ENCRYPTED, 1);

 plain = wpabuf_alloc(data->IDr_len + 1000);
 if (plain == ((void*)0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 if (ikev2_build_idr(data, plain, IKEV2_PAYLOAD_AUTHENTICATION) ||
     ikev2_build_auth(data, plain, IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
     ikev2_build_encrypted(data->proposal.encr, data->proposal.integ,
      &data->keys, 0, msg, plain,
      IKEV2_PAYLOAD_IDr)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return ((void*)0);
 }
 wpabuf_free(plain);

 wpa_hexdump_buf(MSG_MSGDUMP, "IKEV2: Sending message (SA_AUTH)", msg);

 data->state = IKEV2_DONE;

 return msg;
}

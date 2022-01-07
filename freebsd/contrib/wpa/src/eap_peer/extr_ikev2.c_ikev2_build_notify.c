
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_responder_data {scalar_t__ last_msg; int state; int keys; TYPE_1__ proposal; } ;
struct ikev2_hdr {int dummy; } ;


 int IKEV2_FAILED ;
 int IKEV2_PAYLOAD_ENCRYPTED ;
 int IKEV2_PAYLOAD_NOTIFICATION ;
 int IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ;
 int IKE_SA_AUTH ;
 int IKE_SA_INIT ;
 scalar_t__ LAST_MSG_SA_AUTH ;
 int MSG_MSGDUMP ;
 int SA_INIT ;
 scalar_t__ ikev2_build_encrypted (int ,int ,int *,int ,struct wpabuf*,struct wpabuf*,int ) ;
 int ikev2_build_hdr (struct ikev2_responder_data*,struct wpabuf*,int ,int ,int) ;
 scalar_t__ ikev2_build_notification (struct ikev2_responder_data*,struct wpabuf*,int ) ;
 int ikev2_update_hdr (struct wpabuf*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * ikev2_build_notify(struct ikev2_responder_data *data)
{
 struct wpabuf *msg;

 msg = wpabuf_alloc(sizeof(struct ikev2_hdr) + 1000);
 if (msg == ((void*)0))
  return ((void*)0);
 if (data->last_msg == LAST_MSG_SA_AUTH) {

  struct wpabuf *plain = wpabuf_alloc(100);
  if (plain == ((void*)0)) {
   wpabuf_free(msg);
   return ((void*)0);
  }
  ikev2_build_hdr(data, msg, IKE_SA_AUTH,
    IKEV2_PAYLOAD_ENCRYPTED, 1);
  if (ikev2_build_notification(data, plain,
          IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
      ikev2_build_encrypted(data->proposal.encr,
       data->proposal.integ,
       &data->keys, 0, msg, plain,
       IKEV2_PAYLOAD_NOTIFICATION)) {
   wpabuf_free(plain);
   wpabuf_free(msg);
   return ((void*)0);
  }
  wpabuf_free(plain);
  data->state = IKEV2_FAILED;
 } else {

  ikev2_build_hdr(data, msg, IKE_SA_INIT,
    IKEV2_PAYLOAD_NOTIFICATION, 0);
  if (ikev2_build_notification(data, msg,
          IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
   wpabuf_free(msg);
   return ((void*)0);
  }
  data->state = SA_INIT;
 }

 ikev2_update_hdr(msg);

 wpa_hexdump_buf(MSG_MSGDUMP, "IKEV2: Sending message (Notification)",
   msg);

 return msg;
}

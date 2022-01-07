
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int code; } ;
struct eapol_test_data {int radius_identifier; int radius_access_accept_received; int radius_access_reject_received; scalar_t__ eapol_test_num_reauths; int ctrl_iface; struct radius_msg* last_recv_radius; } ;
typedef int RadiusRxResult ;


 int MSG_DEBUG ;
 int RADIUS_ATTR_EAP_MESSAGE ;
 int RADIUS_ATTR_MESSAGE_AUTHENTICATOR ;

 int RADIUS_CODE_ACCESS_CHALLENGE ;

 int RADIUS_RX_QUEUED ;
 int RADIUS_RX_UNKNOWN ;
 int eloop_terminate () ;
 int ieee802_1x_decapsulate_radius (struct eapol_test_data*) ;
 int ieee802_1x_get_keys (struct eapol_test_data*,struct radius_msg*,struct radius_msg*,int const*,size_t) ;
 int printf (char*) ;
 int radius_msg_free (struct radius_msg*) ;
 scalar_t__ radius_msg_get_attr (struct radius_msg*,int ,int *,int ) ;
 struct radius_hdr* radius_msg_get_hdr (struct radius_msg*) ;
 scalar_t__ radius_msg_verify (struct radius_msg*,int const*,size_t,struct radius_msg*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static RadiusRxResult
ieee802_1x_receive_auth(struct radius_msg *msg, struct radius_msg *req,
   const u8 *shared_secret, size_t shared_secret_len,
   void *data)
{
 struct eapol_test_data *e = data;
 struct radius_hdr *hdr = radius_msg_get_hdr(msg);



 if (hdr->code == 128 &&
     radius_msg_get_attr(msg, RADIUS_ATTR_MESSAGE_AUTHENTICATOR, ((void*)0),
    0) < 0 &&
     radius_msg_get_attr(msg, RADIUS_ATTR_EAP_MESSAGE, ((void*)0), 0) < 0) {
  wpa_printf(MSG_DEBUG, "Allowing RADIUS "
         "Access-Reject without Message-Authenticator "
         "since it does not include EAP-Message\n");
 } else if (radius_msg_verify(msg, shared_secret, shared_secret_len,
         req, 1)) {
  printf("Incoming RADIUS packet did not have correct "
         "Message-Authenticator - dropped\n");
  return RADIUS_RX_UNKNOWN;
 }

 if (hdr->code != 129 &&
     hdr->code != 128 &&
     hdr->code != RADIUS_CODE_ACCESS_CHALLENGE) {
  printf("Unknown RADIUS message code\n");
  return RADIUS_RX_UNKNOWN;
 }

 e->radius_identifier = -1;
 wpa_printf(MSG_DEBUG, "RADIUS packet matching with station");

 radius_msg_free(e->last_recv_radius);
 e->last_recv_radius = msg;

 switch (hdr->code) {
 case 129:
  e->radius_access_accept_received = 1;
  ieee802_1x_get_keys(e, msg, req, shared_secret,
        shared_secret_len);
  break;
 case 128:
  e->radius_access_reject_received = 1;
  break;
 }

 ieee802_1x_decapsulate_radius(e);

 if ((hdr->code == 129 &&
      e->eapol_test_num_reauths < 0) ||
     hdr->code == 128) {
  if (!e->ctrl_iface)
   eloop_terminate();
 }

 return RADIUS_RX_QUEUED;
}

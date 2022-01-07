
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ code; } ;
typedef int RadiusRxResult ;


 int MSG_INFO ;
 scalar_t__ RADIUS_CODE_ACCOUNTING_RESPONSE ;
 int RADIUS_RX_INVALID_AUTHENTICATOR ;
 int RADIUS_RX_PROCESSED ;
 int RADIUS_RX_UNKNOWN ;
 TYPE_1__* radius_msg_get_hdr (struct radius_msg*) ;
 scalar_t__ radius_msg_verify (struct radius_msg*,int const*,size_t,struct radius_msg*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static RadiusRxResult
accounting_receive(struct radius_msg *msg, struct radius_msg *req,
     const u8 *shared_secret, size_t shared_secret_len,
     void *data)
{
 if (radius_msg_get_hdr(msg)->code != RADIUS_CODE_ACCOUNTING_RESPONSE) {
  wpa_printf(MSG_INFO, "Unknown RADIUS message code");
  return RADIUS_RX_UNKNOWN;
 }

 if (radius_msg_verify(msg, shared_secret, shared_secret_len, req, 0)) {
  wpa_printf(MSG_INFO, "Incoming RADIUS packet did not have correct Authenticator - dropped");
  return RADIUS_RX_INVALID_AUTHENTICATOR;
 }

 return RADIUS_RX_PROCESSED;
}

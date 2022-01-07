
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int dh; } ;
struct ikev2_responder_data {int error_type; TYPE_1__ proposal; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;




 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_PUT_BE16 (int ,size_t) ;
 int wpa_printf (int ,char*,...) ;
 struct ikev2_payload_hdr* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int ikev2_build_notification(struct ikev2_responder_data *data,
        struct wpabuf *msg, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding Notification payload");

 if (data->error_type == 0) {
  wpa_printf(MSG_INFO, "IKEV2: No Notify Message Type "
      "available");
  return -1;
 }


 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;
 wpabuf_put_u8(msg, 0);
 wpabuf_put_u8(msg, 0);
 wpabuf_put_be16(msg, data->error_type);

 switch (data->error_type) {
 case 128:
  if (data->proposal.dh == -1) {
   wpa_printf(MSG_INFO, "IKEV2: No DH Group selected for "
       "INVALID_KE_PAYLOAD notifications");
   return -1;
  }
  wpabuf_put_be16(msg, data->proposal.dh);
  wpa_printf(MSG_DEBUG, "IKEV2: INVALID_KE_PAYLOAD - request "
      "DH Group #%d", data->proposal.dh);
  break;
 case 129:

  break;
 default:
  wpa_printf(MSG_INFO, "IKEV2: Unsupported Notify Message Type "
      "%d", data->error_type);
  return -1;
 }

 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int EAP_TYPE_IKEV2 ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

struct wpabuf * eap_ikev2_build_frag_ack(u8 id, u8 code)
{
 struct wpabuf *msg;

 msg = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, 0, code, id);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-IKEV2: Failed to allocate memory "
      "for fragment ack");
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-IKEV2: Send fragment ack");

 return msg;
}

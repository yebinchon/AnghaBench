
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WSC_FRAG_ACK ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

struct wpabuf * eap_wsc_build_frag_ack(u8 id, u8 code)
{
 struct wpabuf *msg;

 msg = eap_msg_alloc(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, 2, code, id);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-WSC: Failed to allocate memory for "
      "FRAG_ACK");
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-WSC: Send WSC/FRAG_ACK");
 wpabuf_put_u8(msg, WSC_FRAG_ACK);
 wpabuf_put_u8(msg, 0);

 return msg;
}

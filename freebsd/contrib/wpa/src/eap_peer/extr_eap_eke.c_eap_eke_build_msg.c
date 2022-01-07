
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_eke_data {int dummy; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_EKE ;
 int EAP_VENDOR_IETF ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_msg(struct eap_eke_data *data, int id,
      size_t length, u8 eke_exch)
{
 struct wpabuf *msg;
 size_t plen;

 plen = 1 + length;

 msg = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_EKE, plen,
       EAP_CODE_RESPONSE, id);
 if (msg == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-EKE: Failed to allocate memory");
  return ((void*)0);
 }

 wpabuf_put_u8(msg, eke_exch);

 return msg;
}

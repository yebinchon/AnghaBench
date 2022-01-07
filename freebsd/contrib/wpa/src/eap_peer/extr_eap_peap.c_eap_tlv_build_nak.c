
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TLV_NAK_TLV ;
 int EAP_TYPE_TLV ;
 int EAP_VENDOR_IETF ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_tlv_build_nak(int id, u16 nak_type)
{
 struct wpabuf *msg;

 msg = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TLV, 10,
       EAP_CODE_RESPONSE, id);
 if (msg == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(msg, 0x80);
 wpabuf_put_u8(msg, EAP_TLV_NAK_TLV);
 wpabuf_put_be16(msg, 6);
 wpabuf_put_be32(msg, 0);
 wpabuf_put_be16(msg, nak_type);

 return msg;
}

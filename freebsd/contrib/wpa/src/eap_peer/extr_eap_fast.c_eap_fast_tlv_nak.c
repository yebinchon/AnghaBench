
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_tlv_nak_tlv {void* nak_type; int vendor_id; void* length; void* tlv_type; } ;


 int EAP_TLV_NAK_TLV ;
 int EAP_TLV_TYPE_MANDATORY ;
 void* host_to_be16 (int) ;
 int host_to_be32 (int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct eap_tlv_nak_tlv* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_fast_tlv_nak(int vendor_id, int tlv_type)
{
 struct wpabuf *buf;
 struct eap_tlv_nak_tlv *nak;
 buf = wpabuf_alloc(sizeof(*nak));
 if (buf == ((void*)0))
  return ((void*)0);
 nak = wpabuf_put(buf, sizeof(*nak));
 nak->tlv_type = host_to_be16(EAP_TLV_TYPE_MANDATORY | EAP_TLV_NAK_TLV);
 nak->length = host_to_be16(6);
 nak->vendor_id = host_to_be32(vendor_id);
 nak->nak_type = host_to_be16(tlv_type);
 return buf;
}

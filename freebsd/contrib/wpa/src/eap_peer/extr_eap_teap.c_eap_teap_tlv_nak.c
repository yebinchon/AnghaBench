
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct teap_tlv_nak {void* nak_type; int vendor_id; void* length; void* tlv_type; } ;


 int MSG_DEBUG ;
 int TEAP_TLV_MANDATORY ;
 int TEAP_TLV_NAK ;
 void* host_to_be16 (int) ;
 int host_to_be32 (int) ;
 int wpa_printf (int ,char*,int,int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct teap_tlv_nak* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_teap_tlv_nak(int vendor_id, int tlv_type)
{
 struct wpabuf *buf;
 struct teap_tlv_nak *nak;

 wpa_printf(MSG_DEBUG,
     "EAP-TEAP: Add NAK TLV (Vendor-Id %u NAK-Type %u)",
     vendor_id, tlv_type);
 buf = wpabuf_alloc(sizeof(*nak));
 if (!buf)
  return ((void*)0);
 nak = wpabuf_put(buf, sizeof(*nak));
 nak->tlv_type = host_to_be16(TEAP_TLV_MANDATORY | TEAP_TLV_NAK);
 nak->length = host_to_be16(6);
 nak->vendor_id = host_to_be32(vendor_id);
 nak->nak_type = host_to_be16(tlv_type);
 return buf;
}

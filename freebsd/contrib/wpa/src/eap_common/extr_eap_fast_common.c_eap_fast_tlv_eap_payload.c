
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct pac_tlv_hdr {int dummy; } ;


 int EAP_TLV_EAP_PAYLOAD_TLV ;
 int EAP_TLV_TYPE_MANDATORY ;
 int MSG_DEBUG ;
 int eap_fast_put_tlv_buf (struct wpabuf*,int,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

struct wpabuf * eap_fast_tlv_eap_payload(struct wpabuf *buf)
{
 struct wpabuf *e;

 if (buf == ((void*)0))
  return ((void*)0);


 wpa_printf(MSG_DEBUG, "EAP-FAST: Add EAP-Payload TLV");
 e = wpabuf_alloc(sizeof(struct pac_tlv_hdr) + wpabuf_len(buf));
 if (e == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to allocate memory "
      "for TLV encapsulation");
  wpabuf_free(buf);
  return ((void*)0);
 }
 eap_fast_put_tlv_buf(e,
        EAP_TLV_TYPE_MANDATORY | EAP_TLV_EAP_PAYLOAD_TLV,
        buf);
 wpabuf_free(buf);
 return e;
}

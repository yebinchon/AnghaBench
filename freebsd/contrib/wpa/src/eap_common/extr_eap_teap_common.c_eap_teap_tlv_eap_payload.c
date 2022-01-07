
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int TEAP_TLV_EAP_PAYLOAD ;
 int TEAP_TLV_MANDATORY ;
 int eap_teap_put_tlv_buf (struct wpabuf*,int,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

struct wpabuf * eap_teap_tlv_eap_payload(struct wpabuf *buf)
{
 struct wpabuf *e;

 if (!buf)
  return ((void*)0);


 wpa_printf(MSG_DEBUG, "EAP-TEAP: Add EAP-Payload TLV");
 e = wpabuf_alloc(sizeof(struct teap_tlv_hdr) + wpabuf_len(buf));
 if (!e) {
  wpa_printf(MSG_ERROR,
      "EAP-TEAP: Failed to allocate memory for TLV encapsulation");
  wpabuf_free(buf);
  return ((void*)0);
 }
 eap_teap_put_tlv_buf(e, TEAP_TLV_MANDATORY | TEAP_TLV_EAP_PAYLOAD, buf);
 wpabuf_free(buf);



 return e;
}
